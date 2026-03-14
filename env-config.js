// ══════════════════════════════════════════════════════════════
// env-config.js — FILL IN YOUR VALUES HERE
// This file is loaded by index.html before anything else.
// DO NOT commit this file to a public GitHub repo.
// ══════════════════════════════════════════════════════════════

// 1. Your Supabase Project URL (from Settings > API)
window.ENV_SUPABASE_URL = 'https://YOUR_PROJECT_ID.supabase.co';

// 2. Your Supabase Anon/Public Key (from Settings > API)
window.ENV_SUPABASE_ANON_KEY = 'YOUR_ANON_KEY_HERE';

// 3. Your PIN (4-digit number) — SHA-256 hash
//    Generate it at: https://emn178.github.io/online-tools/sha256.html
//    Example: PIN "1234" → hash "03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4"
//    Default PIN is 1234 — CHANGE THIS to your own!
window.ENV_PIN_HASH = '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4';
