# Redis Static Template

This is a static template for Redis.

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
| <a name="input_hosts"></a> [hosts](#input\_hosts) | The host list of the Redis resource. | `list(string)` | n/a | yes |
| <a name="input_hosts_readonly"></a> [hosts\_readonly](#input\_hosts\_readonly) | The readonly host list of the Redis resource. | `list(string)` | `[]` | no |
| <a name="input_ports"></a> [ports](#input\_ports) | The port of the Redis resource. | `list(number)` | <pre>[<br>  6379<br>]</pre> | no |
| <a name="input_password"></a> [password](#input\_password) | The password of the Redis service. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_context"></a> [context](#output\_context) | The input context, a map, which is used for orchestration. |
| <a name="output_refer"></a> [refer](#output\_refer) | The refer, a map, including hosts, ports and password, which is used for dependencies or collaborations. |
| <a name="output_connection"></a> [connection](#output\_connection) | The connection, a string combined host and port, might be a comma string or a single string. |
| <a name="output_connection_readonly"></a> [connection\_readonly](#output\_connection\_readonly) | The readonly connection, a string combined host and port, might be a comma string or a single string. |
| <a name="output_password"></a> [password](#output\_password) | The password of redis service. |
| <a name="output_endpoints"></a> [endpoints](#output\_endpoints) | The endpoints, a string, might be a comma string or a single string. |
| <a name="output_endpoints_readonly"></a> [endpoints\_readonly](#output\_endpoints\_readonly) | The readonly endpoints, a string, might be a comma string or a single string. |
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
