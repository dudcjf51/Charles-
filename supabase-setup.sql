-- Supabase 대시보드 > SQL Editor 에서 아래 내용을 그대로 실행하세요.
-- apply.html(프로그램 신청서), consult.html(상담 신청서) 데이터를 저장할 테이블 2개를 만듭니다.

-- 1) 프로그램 신청 테이블
create table if not exists applications (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  program text not null,
  name text not null,
  dob date not null,
  phone text not null,
  email text not null
);

alter table applications enable row level security;

-- 홈페이지 방문자가 익명(anon) 상태로 "입력(insert)"만 할 수 있도록 허용
-- (읽기/수정/삭제는 막아서 다른 사람 개인정보가 노출되지 않도록 함)
create policy "Allow public insert on applications"
  on applications for insert
  to anon
  with check (true);

-- 2) 상담 신청 테이블
create table if not exists consultations (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  category text not null,
  name text not null,
  dob date not null,
  phone text not null,
  email text not null,
  details text
);

alter table consultations enable row level security;

create policy "Allow public insert on consultations"
  on consultations for insert
  to anon
  with check (true);
