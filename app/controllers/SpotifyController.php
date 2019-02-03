<?php
namespace ripper\Controllers;
class SpotifyController extends ControllerBase
{
  public function initialize()
  {
    $this->view->setVar('logged_in', is_array($this->auth->getIdentity()));
    $this->view->setTemplateBefore('private');
  }

  public function indexAction()
  {
  }

  public function viewAction()
  {
  }

  public function createAction()
  {
  }
}
