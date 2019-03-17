<?php

namespace App\Http\Controllers;

use App\Http\Helpers\InfusionsoftHelper;
use Illuminate\Http\Request;

class Reminder extends Controller {
  public function index() {
    $infusionsoft = new InfusionsoftHelper();
    
    //$tags = $infusionsoft->getAllTags();
    //echo $tags;
    
    $user = $infusionsoft->getContact('5c8dfd0449d56@test.com');
    print_r( $user );

    // $contacts = $infusionsoft->listContacts();
    // echo $contacts;
    /*
        import all contacts, too much work
        ok ok,
        show a list of all contacts, have a link next to it when clicked it will check status of next reminder:

        take contact email and send it to getContact()

        Array
        (
            [Email] => 5c8dfd0449d56@test.com
            [_Products] => ipa,iaa
            [Id] => 5757
        )



    */
  }
}
