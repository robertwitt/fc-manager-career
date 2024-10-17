const cds = require("@sap/cds");

describe("Club Master service", () => {
  const { POST } = cds.test(__dirname + "/..");

  it("should update a Club's badge", async () => {
    const { data } = await POST(
      "/club-master/Clubs(ID=38e2f8e7-e857-456c-bf7b-6b402fb632d0,IsActiveEntity=true)/ClubMasterService.updateBadge",
      {
        url: "http://dummy.com/badge",
      },
      { auth: { username: "admin", password: "" } }
    );
    expect(data.badgeUrl).toEqual("http://dummy.com/badge");
  });
});
