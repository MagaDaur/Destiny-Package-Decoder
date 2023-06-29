// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:37 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).zwxy;
    r2.xyzw = t0.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.zw = t0.Load(r0.y).xy;
    r7.xyz = r5.wxy * float3(2,2,2) + float3(-1,-1,-1);
    r8.xyzw = saturate(r2.yyxx);
    r0.yzw = r8.zzz * float3(1.62637401,0.0731709972,1.66279101) + float3(0,0.471138,-0.662791014);
    r9.xyzw = cmp(r8.zzzz >= float4(0,0.303333014,0.713333011,1));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r0.yzw = r9.xyz * r0.yzw;
    r0.yz = float2(2,2) * r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r0.w * 2 + r0.y;
    r0.y = saturate(r9.w * 1 + r0.y);
    r9.xyz = r0.yyy * float3(-0.899999976,0.899999976,0) + float3(1,0.100000001,1);
    r10.xyzw = r8.xywz * float4(0.210317001,5.14583302,79.6540833,-0.345488012) + float4(0,-4.14583302,-34.9112434,1.32864797);
    r0.yzw = cmp(r8.yyy >= float3(0,0.839999974,1));
    r11.xyw = r0.yzw ? float3(1,1,1) : 0;
    r0.yzw = r11.xyw + r11.yww;
    r0.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r0.yzw;
    r0.yzw = float3(0.5,0.5,0.5) * r0.yzw;
    r0.yzw = frac(r0.yzw);
    r0.yz = r0.yz * r10.xy;
    r0.yz = float2(2,2) * r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r0.w * 2 + r0.y;
    r0.y = saturate(r11.w * 1 + r0.y);
    r0.y = r0.y * 0.00249999948 + 0.0125000002;
    r0.z = saturate(r4.x);
    r11.xyz = r0.zzz * float3(0,4.34474277,4.05263376) + float3(0,-2.50326395,-7.17653799);
    r12.xyz = r0.zzz * float3(42.8571434,0.366865009,2.33591294) + float3(0,0.992747009,0.787989974);
    r0.w = r0.z * r0.z;
    r11.xyz = r11.xyz * r0.www + r12.xyz;
    r12.xyzw = cmp(r0.zzzz >= float4(0,0.023333,0.206667006,1));
    r12.xyzw = r12.xyzw ? float4(1,1,1,1) : 0;
    r12.xyz = r12.xyz + r12.yzw;
    r12.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r12.xyz;
    r12.xyz = float3(0.5,0.5,0.5) * r12.xyz;
    r12.xyz = frac(r12.xyz);
    r11.xyz = r12.xyz * r11.xyz;
    r10.xy = r11.xy + r11.xy;
    r10.x = r10.x + r10.y;
    r10.x = saturate(r11.z * 2 + r10.x);
    r10.x = r10.x * 0.5 + 0.5;
    r0.y = r10.x * r0.y;
    r10.x = saturate(r3.w * 0.25 + -0.25);
    r10.x = r10.x * 0.899999976 + 0.100000001;
    r8.w = r10.x * r0.y;
    r11.xyz = r0.zzz * float3(0,1.06670296,9.03785515) + float3(0,-1.16432905,-18.681551);
    r12.xyz = r0.zzz * float3(42.8571434,0.309736013,10.3902712) + float3(0,0.993393004,-0.746577978);
    r11.xyz = r11.xyz * r0.www + r12.xyz;
    r12.xyzw = cmp(r0.zzzz >= float4(0,0.023333,0.393332988,1));
    r12.xyzw = r12.xyzw ? float4(1,1,1,1) : 0;
    r0.yzw = r12.xyz + r12.yzw;
    r0.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r0.yzw;
    r0.yzw = float3(0.5,0.5,0.5) * r0.yzw;
    r0.yzw = frac(r0.yzw);
    r0.yzw = r0.yzw * r11.xyz;
    r0.yz = r0.yz + r0.yz;
    r0.y = r0.y + r0.z;
    r11.x = saturate(r0.w * 2 + r0.y);
    r0.yz = r8.zz * float2(1,-1.62083197) + float2(1,0.637672007);
    r0.w = r8.z * r8.z;
    r0.yz = r10.zw * r0.ww + r0.yz;
    r10.xyz = cmp(r8.zzz >= float3(0,0.25999999,1));
    r10.xyz = r10.xyz ? float3(1,1,1) : 0;
    r10.xy = r10.xy + r10.yz;
    r10.xy = float2(9.99999997e-007,9.99999997e-007) + r10.xy;
    r10.xy = float2(0.5,0.5) * r10.xy;
    r10.xy = frac(r10.xy);
    r0.yz = r10.xy * r0.yz;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r11.y = r0.y * 99 + 1;
    r0.y = (uint)vThreadID.x << 3;
    r0.x = (int)r0.y + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r7.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r7.xyzw
    r9.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r9.xyzw
    r8.xy = r4.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r8.xyzw
    r0.yzw = (int3)r0.xxx + int3(5,6,7);
    r11.zw = r5.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r11.xyzw
    r5.zw = r2.xy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r5.xyzw
    r6.xy = r2.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r6.xyzw
  }
  return;
}