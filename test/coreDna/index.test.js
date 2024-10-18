const { CoreDnaCalculator } = require("../../srv/coreDna");

describe("CoreDnaCalculator", () => {
  it("should calculate DNA points", () => {
    expect(CoreDnaCalculator.calculateDnaPoints(9, 8, 7)).toBe(43);
    expect(CoreDnaCalculator.calculateDnaPoints(4, 3, 8)).toBe(39);
    expect(CoreDnaCalculator.calculateDnaPoints(4, 2, 4)).toBe(35);
  });

  it("should calculate trait points", () => {
    expect(CoreDnaCalculator.calculateTraitPoints(81)).toBe(22);
    expect(CoreDnaCalculator.calculateTraitPoints(77)).toBe(18);
    expect(CoreDnaCalculator.calculateTraitPoints(69)).toBe(10);
  });
});
