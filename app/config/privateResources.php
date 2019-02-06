<?php
use Phalcon\Config;
use Phalcon\Logger;
return new Config([
  'privateResources' => [
    'users' => [
      'index',
      'search',
      'edit',
      'create',
      'delete',
      'changePassword'
    ],
    'profiles' => [
      'index',
      'search',
      'edit',
      'create',
      'delete'
    ],
    'permissions' => [
      'index'
    ],
    'spotify' => [
      'index',
      'create',
      'view'
    ],
    'track' => [
      'index',
      'create',
      'view',
      'delete'
    ],
    'album' => [
      'index',
      'create',
      'view',
      'delete'
    ],
    'artist' => [
      'index',
      'create',
      'view',
      'delete'
    ],
    'spotiapi' => [
      'authorize'
    ]
  ]
]);
