<?php
namespace ripper\Models;

use Phalcon\Mvc\Model;
use ripper\Models\Album;
use ripper\Models\Artist;

class Track extends Model
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
    public $album;

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
      $this->album=Album::findFirst($this->album);
    }
}
