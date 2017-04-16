package shop.user;

public class User {
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String password;

    public User(String firstName, String lastName, String email, String phone, String password) {
        setFirstName(firstName);
        setLastname(lastName);
        setEmail(email);
        setPhone(phone);
        setPassword(password);
    }

    public String getFirstName() {
        return firstName;
    }

    private void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    private String getLastname() {
        return lastName;
    }

    private void setLastname(String lastname) {
        this.lastName = lastname;
    }

    private String getEmail() {
        return email;
    }

    private void setEmail(String email) {
        this.email = email;
    }

    private String getPhone() {
        return phone;
    }

    private void setPhone(String phone) {
        this.phone = phone;
    }

    private String getPassword() {
        return password;
    }

    private void setPassword(String password) {
        this.password = password;
    }
}
