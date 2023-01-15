class ApiEndPoints {
  static final String baseUrl = 'https://fuel-app-backend.up.railway.app/api/';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = 'register';
  final String loginEmail = 'login';
}
