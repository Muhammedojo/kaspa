import 'api_services.dart';
import 'services/contracts/api_client.dart';

class ApiServicesImpl implements ApiServices {
  final IApiClient apiClient;
  ApiServicesImpl({required this.apiClient});
}
