   <?php

   function connexionbdd(){
       
   try 
   {        
       $db = new PDO('mysql:host=localhost;charset=latin1;dbname=dragon', 'root', '');
       $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
       return $db;
   } catch (Exception $e) {
      echo "Erreur : " . $e->getMessage() . "<br>";
      echo "N° : " . $e->getCode();
      die("Fin du script");
}       
   }
?>