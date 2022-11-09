package tech.codingclub.helix.entity;

/**
 * Created by hackme on 2/7/18.
 */
public class Member extends MemberBase {

    public String name;
    public String email;

    public String password;
    public String role;

    public String token;



    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getRole() {
        return role;
    }

    public String getPassword() {
        return password;
    }

    public String getToken() {
        return token;
    }
}
