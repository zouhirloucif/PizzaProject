<?php 

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use App\Entity\Pizza;
use App\Entity\Ingredient;
use Symfony\Component\OptionsResolver\OptionsResolver;

class AdminController extends Controller
{
    
    /**
     * @Route("/admin", name="admin")
     */
    public function adminAction()
    {
        return $this->render('security/admin.html.twig');
    }
    
    /**
     * @Route("/admin/add_pizza", name="addpizza")
     */
    public function add_pizzaAction(Request $request)
    {
        $form = $this->createFormBuilder()
             ->add('Name', TextType::class, array(
                 'required' => true,
                 'attr' => array('class'=>'form-control')
             ))
             ->add('Price', TextType::class, array(
                 'required' => true,
                 'attr' => array('class'=>'form-control')
             ))
             ->add('Description', TextType::class, array(
                 'required' => true,
                 'attr' => array('class'=>'form-control')
             ))
             ->add('Ingredients', EntityType::class, array(
                 // looks for choices from this entity
                 'class' => 'App:Ingredient',
           
                 // uses the Ingredient.Name property as the visible option string
                 'choice_label' => 'Name',
            
                 // used to render a select box, check boxes or radios
                 'multiple' => false,
                 'required' => true,
                 'attr' => array('class'=>'form-control')
                 //'expanded' => true,
             ))
             ->add('Save', SubmitType::class, array(
                'attr' => array('class'=>'btn btn-success')
             ))
             ->getForm();
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->get('doctrine')->getManager();
            $newpizza = new Pizza;
            $newpizza
            ->setName($form["Name"]->getData())
            ->setPrice($form["Price"]->getData())
            ->setDescription($form["Description"]->getData());   
            $newpizza->addIngredient($form["Ingredients"]->getData());

            $em->persist($newpizza);
            $em->flush();

            $this->addFlash(
                'notice',
                'Ajout est bien fait!'
            );
            return $this->render('default/add_pizza.html.twig',array(
                'form' => null
            ));
        }

        return $this->render('default/add_pizza.html.twig', array(
            'form' => $form->createView()
        ));
    }
    // ...
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => Pizza::class,
        ));
    }
    public function getName()
    {
        return 'pizza_form';
    }
    
    /**
     * @Route("/admin/commande", name="commande_list")
     * @Template()
     */
    public function managecommandeAction(Request $request)
    {
        $em = $this->get('doctrine.orm.entity_manager');
        $dql = "SELECT commande FROM App:Commande commande";
        $query = $em->createQuery($dql);

        $paginator  = $this->get('knp_paginator');
        $pagination = $paginator->paginate($query, $request->query->getInt('page', 1), 5);

        return ['pagination' => $pagination];
    }

    /**
     * @Route("/admin/commande/{statue}/{id}", name="commande_list_check")
     * @Template()
     */
    public function validecommandeAction($id,$statue)
    {
        $entityManager = $this->getDoctrine()->getManager();
        $commande = $entityManager->getRepository(Commande::class)->find($id);

        if($statue=="valider"){
            $commande->setStatus(1);
        }
        if($statue=="annuler"){
            $commande->setStatus(0);
        }

        $entityManager->flush();

        $this->getDoctrine()
            ->getManager()
            ->getRepository('App:Commande')
            ->findAll();

        return $this->redirectToRoute("commande_list");
    }
}