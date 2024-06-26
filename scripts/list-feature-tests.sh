#!/usr/bin/env bash
# Copyright © 2023 OpenIM. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# This script lists all of the [Feature:.+] tests in our e2e suite.
#
# Usage: `scripts/list-feature-tests.sh`.


OPENIM_ROOT=$(dirname "${BASH_SOURCE[0]}")/..
grep "\[Feature:\w+\]" "${OPENIM_ROOT}"/test/e2e/**/*.go -Eoh | LC_ALL=C sort -u