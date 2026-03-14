-- ══════════════════════════════════════════════════════════════
-- SUPABASE SETUP SQL
-- Run this in your Supabase Dashboard > SQL Editor
-- ══════════════════════════════════════════════════════════════

-- 1. TRANSACTIONS TABLE
create table if not exists transactions (
  id bigint primary key,
  date date not null,
  post_date date,
  desc text not null,
  amount numeric(12, 2) not null,
  cto text,
  cat text,
  due date,
  status text default 'Unpaid',
  cc text,
  created_at timestamptz default now()
);

-- 2. BUDGET TABLE (single row, id=1)
create table if not exists budget (
  id int primary key default 1,
  net_salary numeric(12, 2) default 42000,
  expenses jsonb default '[]',
  next_exp_id int default 12,
  updated_at timestamptz default now()
);

-- 3. Enable Row Level Security (RLS) — open access using anon key
-- (Safe since your site is PIN-locked)
alter table transactions enable row level security;
alter table budget enable row level security;

create policy "Allow all for anon" on transactions
  for all using (true) with check (true);

create policy "Allow all for anon" on budget
  for all using (true) with check (true);

-- 4. Insert a blank budget row so it exists
insert into budget (id, net_salary, expenses, next_exp_id)
values (1, 42000, '[]', 12)
on conflict (id) do nothing;
