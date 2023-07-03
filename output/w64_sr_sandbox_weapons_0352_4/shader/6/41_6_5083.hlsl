// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:29 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.yzw = t0.Load(r2.w).xyz;
    r0.y = saturate(r5.w);
    r6.w = 4 * r0.y;
    r0.zw = r0.yy * float2(4151.31982,-0.192273006) + float2(-417.047424,0.582997024);
    r7.xy = r0.yy * float2(-3.14814806,-0.589175999) + float2(1,0.198451996);
    r7.z = r0.y * r0.y;
    r0.zw = r0.zw * r7.zz + r7.xy;
    r7.xyz = cmp(r0.yyy >= float3(0,0.0700000003,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r7.xy = r7.xy + r7.yz;
    r7.xy = float2(9.99999997e-007,9.99999997e-007) + r7.xy;
    r7.xy = float2(0.5,0.5) * r7.xy;
    r7.xy = frac(r7.xy);
    r0.yz = r7.xy * r0.zw;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r0.y = r0.y * 0.00679999962 + 0.00319999992;
    r7.xyzw = saturate(r4.yzzz);
    r8.xyzw = r7.wwww * float4(-1.75204098,1555.1156,0,4269.9458) + float4(1.40718198,-4469.84082,1,-1355.22021);
    r0.z = r7.w * r7.w;
    r8.xy = r8.xy * r0.zz + r8.zw;
    r9.xyz = cmp(r7.www >= float3(0,0.910000026,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r8.zw = r9.xy + r9.yz;
    r8.zw = float2(9.99999997e-007,9.99999997e-007) + r8.zw;
    r8.zw = float2(0.5,0.5) * r8.zw;
    r8.zw = frac(r8.zw);
    r8.xy = r8.zw * r8.xy;
    r8.xy = r8.xy + r8.xy;
    r0.w = saturate(r8.x + r8.y);
    r0.w = r0.w * 0.949999988 + 0.0500000007;
    r0.y = r0.y * r0.w;
    r8.xyzw = r7.xyzw * float4(0.875,4066.26221,4.20565414,-0.247984007) + float4(0.125,-462.303009,-0.931827009,0.513971984);
    r9.x = r8.x * r0.y;
    r7.xyz = r7.www * float3(0,-0.658469021,-0.323466003) + float3(1,0.167851999,0.0574779995);
    r0.yzw = r8.yzw * r0.zzz + r7.xyz;
    r7.xyzw = cmp(r7.wwww >= float4(0,0.075000003,0.300000012,1));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = r7.xyz + r7.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r0.yzw = r7.xyz * r0.yzw;
    r0.yz = r0.yz + r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = saturate(r0.w * 2 + r0.y);
    r0.y = r0.y * 249 + 1;
    r0.z = saturate(5 * r1.w);
    r0.z = 1 + -r0.z;
    r0.z = r0.z * 4 + 1;
    r9.y = r0.y * r0.z;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
    r6.xy = r5.xy;
    r6.zw = r6.ww;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
    r9.z = r5.z;
    r9.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r9.xyzw
    r0.y = (int)r0.x + 5;
    r2.x = r5.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  }
  return;
}