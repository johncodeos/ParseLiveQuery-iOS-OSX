/**
 * Copyright (c) 2016-present, Parse, LLC.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

import Parse

extension Parse {
    static func validatedCurrentConfiguration() -> ParseClientConfiguration {
        guard let configuration = Parse.currentConfiguration else {
            preconditionFailure("Parse SDK is not initialized. Call Parse.initializeWithConfiguration before loading live query client.")
        }
        return configuration
    }
}
