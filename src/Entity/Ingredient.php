<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use App\Entity\Pizza;

/**
 * Ingredient
 *
 * @ORM\Table(name="ingredient")
 * @ORM\Entity(repositoryClass="App\Repository\IngredientRepository")
 */
class Ingredient
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /** 
    * @ORM\ManyToMany(targetEntity="Pizza", mappedBy="ingredients", cascade={"persist"})
    */
    private $pizzas;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255)
     */
    private $name;


    /**
     * Get id.
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set name.
     *
     * @param string $name
     *
     * @return Ingredient
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name.
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }
    /**
     * Get name.
     *
     * @param string $id
     * 
     * @return string
     */
    public function getNameById($id)
    {
        if($this->name = $id){
            return $this->name;
        }
    }
}
