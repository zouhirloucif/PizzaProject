<?php 

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use App\Entity\Ingredient;
use App\Entity\Pizza;
use App\Entity\Commande;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="index")
     * @Template()
     */
    public function indexAction()
    {
        return [];
    }
    /**
     * @Route("/pizza", name="pizzas_list")
     * @Template()
     */
    public function pizzasAction(Request $request)
    {
        $em = $this->get('doctrine')->getManager();
        $pizzas = $em->getRepository('App\Entity\Pizza')
                ->findAll();
                $list  = $this->get('knp_paginator')->paginate(
                $pizzas,
                $request->query->get('page', 1));
        return ['pizzas' => $list];
    }
    /**
     * @Route("addpizza", name="add_pizza")
     * @Template()
     */
    public function insertPizzasAction() {
        $em = $this->get('doctrine')->getManager();

        $mozarella = new Ingredient;
        $mozarella->setName('Mozarella');
        $parmesan = new Ingredient;
        $parmesan->setName('Parmesan');
        $quatreFromages = new Pizza;
        $quatreFromages
            ->setName('4 fromages')
            ->setPrice(32.2)
            ->setDescription('Pour les fans de fromage')
            ;   
        $quatreFromages->addIngredient($mozarella);
        $quatreFromages->addIngredient($parmesan);
        $em->persist($quatreFromages);
        $em->persist($mozarella);
        $em->persist($parmesan);
        $em->flush();

        return new Response('Pizzas créées');
    }

    /**
     * @Route("/commande", name="commande_pizzas")
     * @Template()
     */
    public function commandePizzasAction(Request $request) {
        $form = $this->createFormBuilder()
            ->add('adresse', TextType::class, array('label'  => 'Adresse :','attr' => array('id'=>'adresse', 'name'=>'adresse', 'class'=>'form-control',
                'placeholder'=>'Entrez votre adresse')))
            ->add('nom', TextType::class, array('label'  => 'Nom :','attr' => array('id'=>'nom', 'name'=>'nom', 'class'=>'form-control',
                'placeholder'=>'Entrez votre nom')))
            ->add('telephone', TextType::class, array('label'  => 'Téléphone :','attr' => array('id'=>'telephone', 'name'=>'telephone', 'class'=>'form-control',
                'placeholder'=>'Entrez votre téléphone')))
            ->add('pizzas', EntityType::class, array(
                'class'        => 'App:Pizza',
                'choice_label' => 'name',
                'label'        => 'Pizza :',
                'multiple' => false,
                'required' => true,
                'attr' => array('class'=>'form-control')
            ))
            ->add('add', SubmitType::class, array('label' => 'Commander' ,'attr' => array( 'class' => 'form-control btn btn-success text-center')))
            ->getForm();
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->get('doctrine')->getManager();

            $commande = new Commande;

            $commande
                ->setNom($form["nom"]->getData())
                ->setadresse($form["adresse"]->getData())
                ->setTelephone($form["telephone"]->getData())
                ->addPizzas($form["pizzas"]->getData());
            $em->persist($commande);
            $em->flush();
            unset($form);
            unset($commande);
            $this->addFlash(
                'success', 'Commande bien ajouter, merci beaucoup'
            );
            return $this->render("default/commande.html.twig");
        }

        return $this->render("default/commande.html.twig",[ 'form' => $form->createView()]);
    }

}