/// Exception di Dart
/// Exception adalah sebuah error yang terjadi ketika program kita sedang berjalan.
/// Exception biasanya digunakan ketika kita ingin menangani error yang terjadi ketika program kita sedang berjalan.
/// Di dalam Dart, kita dapat membuat Exception dengan cara menambahkan keyword throw sebelum nama Exception.
/// Perhatikan contoh berikut:

// Example Exception (using throw keyword) (using Exception Class implemented from Object Class)
class ValidationException implements Exception{ // Create ValidationException Class (implements Exception)
  String message; // String Field (can be null)

  ValidationException(this.message); // Constructor

  @override // Override toString() from Object Class (default class in Dart)
  String toString() { // Method toString() from Object Class (default class in Dart)
    return message; // Return message
  }
}

class Register{
  String? username; // String Field (can be null)
  String? password; // String Field (can be null)

  Register(this.username, this.password); // Constructor

  void validate(){ // Validate Method
    if (username == null || username == "") { // Check if username is null
      throw ValidationException("Username is null"); // Throw ValidationException
    } else if (password == null || password == "") { // Check if password is null
      throw ValidationException("Password is null"); // Throw ValidationException
    } else if (password!.length < 6) { // Check if password length < 6
      throw ValidationException("Password length must be more than 6"); // Throw ValidationException
    }
  }
}

class ValidationLoginException{
  String? username; // String Field (can be null)
  String? password; // String Field (can be null)

  ValidationLoginException(this.username, this.password); // Constructor

  void validate(){ // Validate Method
    if (username == null || username == "") { // Check if username is null
      throw ValidationException("Username is null"); // Throw ValidationException
    } else if (password == null || password == "") { // Check if password is null
      throw ValidationException("Password is null"); // Throw ValidationException
    } else if (password!.length < 6) { // Check if password length < 6
      throw ValidationException("Password length must be more than 6"); // Throw ValidationException
    } else if (username != "danu" || password != "123456789"){
      throw ValidationException("Username or Password is wrong");
    }
  }
}

class ValidationRegisterException{
  static void validate(String? username, String? password){ // Validate Method
    if (username == null) { // Check if username is null
      throw ValidationException("Username is null"); // Throw ValidationException
    } else if (password == null) { // Check if password is null
      throw ValidationException("Password is null"); // Throw ValidationException
    }
  }
}

void main(){

  // Example Register
  var register = Register("sumitroajiprabowo", null); // Create Object
  try { // Try
    register.validate(); // Validate
  } catch (e) { // Catch
    print("Validation error: $e"); // Print "Validation error: $e"
  } finally { // Finally is always executed (whether there is an error or not)
    print("Exception Register Successfully Running"); // Print "Exception Register Successfully Running
  }

  /*
  Try catch on biasanya digunakan ketika kita ingin menangani error yang terjadi ketika program kita sedang berjalan.
  Kita hanya peduli dengan error yang berasal dari class tertentu.
  Perhatikan contoh berikut ini
   */

  // Example Exception Login with Class ValidationLoginException only
  var validationLoginException = ValidationLoginException("danu", "12345678"); // Create Object
  try { // Try
    validationLoginException.validate(); // Validate
  } on ValidationLoginException catch (e) { // Catch
    print("Validation error: $e"); // Print "Validation error: $e
  } on Exception catch(e){
    print("Exception error: $e");
  } finally { // Finally is always executed (whether there is an error or not)
    print("Exception Login Successfully Running"); // Print "Exception Login Successfully Running"
  }

  /*
  Try catch finally biasanya digunakan ketika kita ingin menangani error yang terjadi ketika program kita sedang berjalan.
  Kita tidak peduli exception berasal dari class apa, yang penting kita bisa menangani error yang terjadi.
  Perhatikan contoh berikut ini
   */

  // Example Exception Login with All Class Exception
  var validationAllException = ValidationLoginException("danu", "12345678"); // Create Object
  try { // Try
    validationAllException.validate(); // Validate
  } catch (e) { // Catch
    print("Validation error: $e"); // Print "Validation error: $e
  } finally { // Finally is always executed (whether there is an error or not)
    print("Exception Login Successfully Running"); // Print "Exception Login Successfully Running"
  }

  /*
  Stack Trace biasanya digunakan ketika kita ingin mengetahui letak error yang terjadi.
  Untuk menambahkan Stack Trace, kita dapat menambahkan keyword on di dalam catch, lalu tambahkan parameter stackTrace.
  Perhatikan contoh berikut ini
   */

  // Example Exception Login with Class ValidationLoginException only with Stack Trace (using Stack Trace)
  var validationLoginExceptionWithStackTrace = ValidationLoginException("danu", "12345"); // Create Object
  try { // Try
    validationLoginExceptionWithStackTrace.validate(); // Validate
  } on ValidationLoginException catch (exception, stackTrace) { // Catch
    print("Validation error: $exception"); // Print "Validation error: $e
    print("Stack Trace error: ${stackTrace.toString()}"); // Print "Stack Trace error: $stackTrace
  } on Exception catch(exception, stackTrace){
    print("Exception error: $exception");
    print("Stack Trace error: ${stackTrace.toString()}");
  } finally { // Finally is always executed (whether there is an error or not)
    print("Exception Login Successfully Running"); // Print "Exception Login Successfully Running"
  }

  // Example Exception Validation Register
  try { // Try
    ValidationRegisterException.validate(null, null); // Validate
  } catch (e) { // Catch
    print(e); // Print e
  } finally { // Finally is always executed (whether there is an error or not)
    print("Exception Validation Register Successfully Running"); // Print "Exception Validation Register Successfully Running"
  }

}