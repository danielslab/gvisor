// Copyright 2019 The gVisor Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// +build arm64

package kvm

import (
	"unsafe"

	"gvisor.dev/gvisor/pkg/sentry/arch"
)

//go:nosplit
func dieArchSetup(c *vCPU, context *arch.SignalContext64, guestRegs *userRegs) {
	// TODO(gvisor.dev/issue/1249): dieTrampoline supporting for Arm64.
}
