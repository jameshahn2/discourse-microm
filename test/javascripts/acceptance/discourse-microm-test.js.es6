import { acceptance } from "helpers/qunit-helpers";

acceptance("DiscourseMicrom", { loggedIn: true });

test("DiscourseMicrom works", async assert => {
  await visit("/admin/plugins/discourse-microm");

  assert.ok(false, "it shows the DiscourseMicrom button");
});
