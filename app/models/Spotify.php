<?php
namespace ripper\Models;

use Phalcon\Mvc\Model;
use ripper\Models\Track;

class Spotify extends Model
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
    public $track;

    /**
     *
     * @var string
     */
    public $uid;

    /**
     *
     * @var string
     */
    public $downloaded;

    public function afterFetch()
    {
      $this->track=Track::findFirst($this->track);
    }
}
