const std = @import("std");
const expect = std.testing.expect;

pub fn main() void {}

test "always succeeds" {
    try expect(true);
}
