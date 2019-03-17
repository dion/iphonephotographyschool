<?php
/*****
  Adds the correct “Start module reminder” tag to Infusionsoft contact based on order in which they bought courses and their progress in modules.
******/
namespace App\Http\Controllers;

use App\Http\Helpers\InfusionsoftHelper;
use Illuminate\Http\Request;
use App\Tags;

class Reminder extends Controller {
  public function index(Request $request) {
    $contactEmail = $request->input('contact_email');
    $resultMsg = array(
      "success" => false,
      "data" => ''
    );

    if ($contactEmail) {
      $infusionsoft = new InfusionsoftHelper();
      //print_r( $getUsers = $infusionsoft->getUsers() );
      $user = $infusionsoft->getContact($contactEmail);

      $resultMsg['data'] = $user ? $user : 'no user found';
      $resultMsg['success'] = $user ? true : false;

      // ipa,iaa
      $userProducts = $user['_Products'];
      $userId = $user['Id'];
      $userEmail = $user['Email'];

      // use Tags Model to match/map out which reminder to send
    //print_r( $data = Tags::all() );

    /*************
    ****
      If no modules are completed it should attach first tag in order. 
      In case any of first course modules are completed then it should attach next uncompleted module after the last completed of the first course. (e.g.. M1, M2 & M4 are completed, then attach M5 tag). 
      
      If all (or last) first course modules are completed - attach next uncompleted module after the last completed of the second course. Same applies in case of a third course. 
      
      If all (or last) modules of all courses are completed - attach “Module reminders completed” tag.
    ****
    **************/
     
    /*
        if user has no products then default add tag to IPA [order is IPA, IEA, IAA]
        run addTag($contact_id, $tag_id)
    */   


      return json_encode($resultMsg);
    } else {
      $resultMsg['data'] = "contact_email param is empty";
      
      return json_encode($resultMsg);
    }
  }
}