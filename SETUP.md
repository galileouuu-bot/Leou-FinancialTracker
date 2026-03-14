# 🚀 Leou's Finance Dashboard — Setup Guide

This is your full finance website with:
- ✅ Supabase database (sync across all devices)
- ✅ PIN lock screen for security
- ✅ Export to CSV
- ✅ Works on phone and desktop

---

## 📋 STEP 1 — Create a Supabase Account (Free)

1. Go to **https://supabase.com** and sign up (free)
2. Click **"New Project"**
3. Give it a name like `leou-finance`
4. Choose a region: **Southeast Asia (Singapore)**
5. Set a database password (save this somewhere!)
6. Click **Create new project** and wait ~1 minute

---

## 🗃️ STEP 2 — Set Up the Database Tables

1. In your Supabase project, click **SQL Editor** (left sidebar)
2. Click **"New Query"**
3. Open the file `supabase-setup.sql` and copy ALL the content
4. Paste it in the SQL Editor
5. Click **Run** (green button)
6. You should see "Success" — your tables are ready!

---

## 🔑 STEP 3 — Get Your Supabase Keys

1. In Supabase, go to **Settings** (gear icon, left sidebar)
2. Click **API**
3. Copy two things:
   - **Project URL** — looks like `https://abcdefgh.supabase.co`
   - **anon / public key** — long text starting with `eyJ...`

---

## ✏️ STEP 4 — Set Your PIN

1. Go to this website: **https://emn178.github.io/online-tools/sha256.html**
2. Type your 4-digit PIN in the "Input" box (e.g., `5678`)
3. Copy the long hash that appears (e.g., `9d4e1e23...`)
4. Save that hash — you'll need it in Step 5

---

## ⚙️ STEP 5 — Configure Your env-config.js

Open the file `env-config.js` and replace the placeholder values:

```js
window.ENV_SUPABASE_URL = 'https://YOUR_PROJECT_ID.supabase.co';
// ↑ Replace with your Project URL from Step 3

window.ENV_SUPABASE_ANON_KEY = 'YOUR_ANON_KEY_HERE';
// ↑ Replace with your anon key from Step 3

window.ENV_PIN_HASH = 'YOUR_HASH_HERE';
// ↑ Replace with the SHA-256 hash of your PIN from Step 4
```

Save the file.

---

## 🌐 STEP 6 — Deploy to Netlify (Free)

### Option A: Drag & Drop (Easiest!)
1. Go to **https://netlify.com** and log in
2. Click **"Add new site"** → **"Deploy manually"**
3. Drag the entire `finance-tracker` folder onto the upload area
4. Wait ~30 seconds — your site is live!
5. Copy your site URL (e.g., `amazing-koala-abc123.netlify.app`)

### Option B: If you want to update easily (GitHub)
1. Upload folder to GitHub
2. Connect GitHub repo to Netlify

---

## 📱 STEP 7 — Add to Your Phone Home Screen

### On iPhone (Safari):
1. Open your Netlify site URL in **Safari**
2. Tap the **Share** button (square with arrow)
3. Scroll down and tap **"Add to Home Screen"**
4. Name it "Finance" and tap **Add**

### On Android (Chrome):
1. Open your site in **Chrome**
2. Tap the **three dots** menu (top right)
3. Tap **"Add to Home screen"**
4. Tap **Add**

Now it works like an app on your phone! 🎉

---

## 🔄 How Syncing Works

- Every change you make (add/edit/delete/pay) saves to **Supabase instantly**
- Open the site on any device and tap **"Live"** badge to refresh
- All your family members can use the same link and see the same data

---

## 🆘 Troubleshooting

| Problem | Solution |
|---|---|
| Shows "Local" instead of "Live" | Check your Supabase URL and key in env-config.js |
| PIN not working | Make sure you hashed it at the SHA-256 tool site |
| Data not syncing | Click the green "Live" badge to force sync |
| Lost your PIN | Change `ENV_PIN_HASH` to `''` in env-config.js to disable the lock temporarily |

---

## 📞 Default PIN

The default PIN is **1234** until you change it in env-config.js.
**Please change this before sharing the link with others!**
