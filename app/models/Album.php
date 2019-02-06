<?php
namespace ripper\Models;

use Phalcon\Mvc\Model;
use ripper\Models\Artist;

class Album extends Model
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var string
     */
    public $artist;

    /**
     *
     * @var string
     */
    public $name;

    /**
     *
     * @var string
     */
    public $label;

    /**
     *
     * @var string
     */
    public $release;

    /**
     *
     * @var string
     */
    public $image;

    /**
     *
     * @var string
     */
    public $spotify_id;


    public function afterFetch()
    {
      $this->artist=Artist::findFirst($this->artist);
    }
}
