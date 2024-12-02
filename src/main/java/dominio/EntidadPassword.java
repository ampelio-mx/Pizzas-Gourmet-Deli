/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dominio;

/**
 *
 * @author Ampelio
 */
public class EntidadPassword {
    
    String userId;
    String passwordId;

    public EntidadPassword() {
    }

    public EntidadPassword(String userId, String passwordId) {
        this.userId = userId;
        this.passwordId = passwordId;
    }
        
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPasswordId() {
        return passwordId;
    }

    public void setPasswordId(String passwordId) {
        this.passwordId = passwordId;
    }

    @Override
    public String toString() {
        return "EntidadPassword{" + "userId=" + userId + ", passwordId=" + passwordId + '}';
    }
        
}


