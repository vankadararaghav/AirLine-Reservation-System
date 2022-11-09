package tech.codingclub.helix.entity;

public class SignupResponse {
     public String message;
     public boolean user_created;

    public String getMessage() {
        return message;
    }

    public boolean isUser_created() {
        return user_created;
    }

    public SignupResponse(String message, boolean user_created)
     {
         this.message = message;
         this.user_created = user_created;
     }


}
