# AWS Elasticache Redis Static Template

This is a static template for AWS Elasticache Redis.

## Examples

- [Complete](./examples/complete)

## Contributing

Please read our [contributing guide](./docs/CONTRIBUTING.md) if you're interested in contributing to Walrus template.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_context"></a> [context](#input\_context) | Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.<br><br>Examples:<pre>context:<br>  project:<br>    name: string<br>    id: string<br>  environment:<br>    name: string<br>    id: string<br>  resource:<br>    name: string<br>    id: string</pre> | `map(any)` | `{}` | no |
| <a name="input_selector"></a> [selector](#input\_selector) | The selector, a map, which is used  for dependencies or collaborations. | `map(any)` | `{}` | no |
| <a name="input_endpoint_internal"></a> [endpoint\_internal](#input\_endpoint\_internal) | The internal endpoints of the resource. | `list(string)` | `[]` | no |
| <a name="input_endpoint_internal_readonly"></a> [endpoint\_internal\_readonly](#input\_endpoint\_internal\_readonly) | The internal readonly endpoints of the resource. | `list(string)` | `[]` | no |
| <a name="input_password"></a> [password](#input\_password) | The password of the redis service. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_context"></a> [context](#output\_context) | The input context, a map, which is used for orchestration. |
| <a name="output_selector"></a> [selector](#output\_selector) | The selector, a map, which is used for dependencies or collaborations. |
| <a name="output_endpoint_internal"></a> [endpoint\_internal](#output\_endpoint\_internal) | The internal endpoints, a string list, which are used for internal access. |
| <a name="output_endpoint_internal_readonly"></a> [endpoint\_internal\_readonly](#output\_endpoint\_internal\_readonly) | The internal readonly endpoints, a string list, which are used for internal readonly access. |
| <a name="output_password"></a> [password](#output\_password) | The password of redis service. |
<!-- END_TF_DOCS -->

## License

Copyright (c) 2023 [Seal, Inc.](https://seal.io)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [LICENSE](./LICENSE) file for details.

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
