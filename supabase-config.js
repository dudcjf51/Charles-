// Supabase 프로젝트 연결 정보
// 1) Supabase 대시보드 > 우측 상단 "Connect" 버튼을 클릭
// 2) anon / public API key를 복사해서 아래 SUPABASE_ANON_KEY 자리에 붙여넣으세요.
//    (anon key는 공개 브라우저 코드에 넣어도 되는 키입니다. service_role 키는 절대 여기에 넣지 마세요.)

const SUPABASE_URL = 'https://blurdahhrugnhyvpfuew.supabase.co';
const SUPABASE_ANON_KEY = 'sb_publishable_j-1pNwysbirezPUEBA8g3g_0H9AjR38';

const supabaseClient = supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
