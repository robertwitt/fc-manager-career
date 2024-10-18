const cds = require("@sap/cds");

describe("Manager Career service", () => {
  const { POST, GET } = cds.test(__dirname + "/..");

  it("should start a manager career and calculate points", async () => {
    const { data } = await POST(
      "/manager-career/ManagerCareers(ID=ecff777e-583f-4a25-ba8c-8e44c6d4535b,IsActiveEntity=true)/ManagerCareerService.start",
      {}
    );
    expect(data).toMatchObject({
      startingDnaPoints: 39,
      startingTraitPoints: 11,
      started: true,
    });
  });

  it("should activate a manager career and deactivate previous one", async () => {
    const { data } = await POST(
      "/manager-career/ManagerCareers(ID=ecff777e-583f-4a25-ba8c-8e44c6d4535b,IsActiveEntity=true)/ManagerCareerService.activate",
      {}
    );
    expect(data).toMatchObject({ active: true });
    const {
      data: { active },
    } = await GET(
      "/manager-career/ManagerCareers(ID=a6470822-eba2-4a34-9789-a40094b49ef8,IsActiveEntity=true)"
    );
    expect(active).toBeFalsy();
  });
});
