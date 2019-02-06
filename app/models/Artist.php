<?php
namespace ripper\Models;

use Phalcon\Mvc\Model;
use ripper\Models\Album;

class Artist extends Model
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
    public $name;

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

    public function getAlben()
    {
      return Album::find("artist = ".$this->id);
    }
}
