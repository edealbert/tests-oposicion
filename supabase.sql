-- Pega esto en Supabase > SQL Editor > New query y pulsa "Run".
-- Crea la tabla donde se guarda el progreso de los tests.
create table if not exists public.progreso (
  id text primary key,
  datos jsonb not null,
  actualizado timestamptz not null default now()
);

alter table public.progreso enable row level security;

-- La web usa la clave pública (anon) para leer y guardar el progreso.
create policy "leer progreso" on public.progreso for select to anon using (true);
create policy "crear progreso" on public.progreso for insert to anon with check (true);
create policy "actualizar progreso" on public.progreso for update to anon using (true) with check (true);
