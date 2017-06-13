package org.bigbluebutton.core.model.users
{
  import mx.collections.ArrayCollection;
  
  import org.bigbluebutton.core.model.Me;

  public class Users2x
  {
   
    private var _users:ArrayCollection = new ArrayCollection();
           
    private function add(user: User2x):void {
      _users.addItem(user);
    }
    
    private function remove(userId: String):User2x {
      var index:int = getIndex(userId);
      if (index >= 0) {
        return _users.removeItemAt(index) as User2x;
      }
      
      return null;
    }
    
    private function getUserAndIndex(userId: String):Object {
      var user:User2x;
      for (var i:int = 0; i < _users.length; i++) {
        user = _users.getItemAt(i) as User2x;
        
        if (user.id == userId) {
          return {index:i, user:user};;
        }
      }
      
      return null;      
    }
    
    private function getUser(userId:String):User2x {
      var user:User2x;
      
      for (var i:int = 0; i < _users.length; i++) {
        user = _users.getItemAt(i) as User2x;
        
        if (user.id == userId) {
          return user;
        }
      }				
      
      return null;
    }
    
    private function getIndex(userId: String):int {
      var user:User2x;
      for (var i:int = 0; i < _users.length; i++) {
        user = _users.getItemAt(i) as User2x;
        
        if (user.id == userId) {
          return i;
        }
      }
      
      return -1;
    }
        
    public function userJoined(vu: User2x):void {
      add(vu);    
    }

    public function userLeft(intId: String):User2x {
      return remove(intId);
    }
  
  }
}

