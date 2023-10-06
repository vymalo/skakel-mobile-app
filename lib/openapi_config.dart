import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

/// This is the configuration for the OpenAPI generator.
@Openapi(
  additionalProperties: AdditionalProperties(
      pubName: 'skakel_api',
      pubAuthor: 'Vymalo Team',
      pubAuthorEmail: 'dev@vymalo.com',
      pubHomepage: 'https://vymalo.com/skakel'),
  inputSpecFile: 'docs/user.openapi.yaml',
  generatorName: Generator.dio,
  outputDirectory: 'api/skakel_api',
  runSourceGenOnOutput: true,
  alwaysRun: true,
  apiPackage: 'skakel_api',
  fetchDependencies: true,
  overwriteExistingFiles: true,
)
class OpenApiConfig extends OpenapiGeneratorConfig {}
