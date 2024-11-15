# Supabase Authentication with Email and Password  

This project demonstrates how to implement email and password authentication using **[Supabase](https://supabase.com/)** in a Flutter application.  

## Features  
- User registration with email and password.  
- Secure user login with email and password.  
- Password recovery and reset functionality.  
- Authentication state management.  
- Logout functionality.  

## Prerequisites  
To run this project, ensure you have the following:  
1. A **Supabase** project (set up [here](https://supabase.com/)).  
2. **Supabase API URL** and **Anon Key**.  
3. Flutter SDK installed on your machine.  

## Setup Instructions  

### 1. Clone the Repository  
```bash  
git clone <repository-url>  
cd <repository-folder>  
```  

### 2. Install Dependencies  
Run the following command to install necessary dependencies:  
```bash  
flutter pub get  
```  

### 3. Configure Supabase  
- Open the Supabase dashboard.  
- Go to **Settings > API** and copy your project’s **API URL** and **Anon Key**.  
- Replace placeholders in your `lib/main.dart` (or similar configuration file):  

```dart  
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "PROJECT URL",
    anonKey: "ANON KEY",
  );
  runApp(const MyApp());
} 
```  

### 4. Run the App  
Launch the app using:  
```bash  
flutter run  
```  

## Usage  

### User Registration  
- Open the app.  
- Go to the **Register** screen.  
- Enter your email and password to create a new account.  

### User Login  
- Open the app.  
- Go to the **Login** screen.  
- Enter your registered email and password to log in.  

### Password Recovery  
- Use the **Forgot Password** option on the login screen to reset your password via email.  

### Logout  
- Use the **Logout** button to sign out of the app.  

## Technologies Used  
- **Flutter** for cross-platform app development.  
- **Supabase** for backend services, including authentication.  


## Contribution  
Contributions are welcome! Fork the repository and submit a pull request to contribute to the project.  

## License  
This project is licensed under the [MIT License](LICENSE).
