import { db } from "hatchable";

export const access = "public";
export const methods = ["GET", "POST"];

export default async function (req, res) {
  if (req.method === "GET") {
    const { rows } = await db.query("SELECT data, updated_at FROM smartstay_state WHERE id = $1", ["main"]);
    if (!rows.length) return res.status(404).json({ error: "Hotel data not initialized" });
    return res.json({ data: rows[0].data, updatedAt: rows[0].updated_at });
  }
  const data = req.body && req.body.data;
  if (!data || typeof data !== "object" || Array.isArray(data)) return res.status(400).json({ error: "A valid data object is required" });
  const { rows } = await db.query("INSERT INTO smartstay_state (id, data, updated_at) VALUES ($1, $2::jsonb, NOW()) ON CONFLICT (id) DO UPDATE SET data = EXCLUDED.data, updated_at = NOW() RETURNING updated_at", ["main", JSON.stringify(data)]);
  return res.json({ ok: true, updatedAt: rows[0].updated_at });
}