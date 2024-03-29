# Copyright 2023 Google LLC
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#      https://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

variable "project_name" {
  type        = string
  description = "Name of gcp project"
}

variable "monitoring_dashboard_config" {
  type = object({
    node_prefix : optional(string),
    outlier_count : optional(number)
  })
  description = <<EOF
  Configuration for monitoring dashboard:
  {
    "node_prefix": "prefix used to generate the node name in multislice node provision, default to empty string",
    "outlier_count": "number of outliers to show on dashboard, default to 10 if not set"
  }
  Enter {} to set default configuration for monitoring dashboard.
  EOF
}
