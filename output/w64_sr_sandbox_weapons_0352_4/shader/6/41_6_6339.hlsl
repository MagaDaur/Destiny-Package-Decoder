// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:24 2023
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
    r4.xyzw = t0.Load(r2.y).wxyz;
    r5.xyzw = t0.Load(r2.z).wxyz;
    r2.xyzw = t0.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.yzw = t0.Load(r0.y).xyz;
    r7.xy = r5.wx * float2(2,2) + float2(-1,-1);
    r7.z = r2.x * 2 + -1;
    r0.y = saturate(r3.w);
    r8.xyzw = r0.yyyy * float4(0,-9.16296387,-70.0905762,-1060.90674) + float4(0,12.7540894,172.588867,2999.74609);
    r9.xyzw = r0.yyyy * float4(0,-3.6685791,-143.460938,-2832.38477) + float4(1,0.442885995,41.2047729,893.674316);
    r10.xyz = r0.yyy * float3(-16.1778851,-29.527422,-70.7346115) + float3(16.2721996,29.5846558,70.7346115);
    r0.z = r0.y * r0.y;
    r8.xyzw = r8.xyzw * r0.zzzz + r9.xyzw;
    r9.xyzw = cmp(r0.yyyy >= float4(0,0.75,0.868055999,0.944444001));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r11.xyzw = cmp(r0.yyyy >= float4(0.987500012,0.997222006,0.998610973,1));
    r12.xyzw = r11.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r8.xyz = r9.xyz * r8.xyz;
    r9.xyz = r12.xyz + r12.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r9.xyz = r9.xyz * r10.xyz;
    r0.w = 2;
    r8.xy = r0.ww * r8.xy;
    r9.xy = r9.xy + r9.xy;
    r8.x = r8.x + r8.y;
    r0.w = r0.w * r8.z + r8.x;
    r0.w = r8.w * r9.w + r0.w;
    r8.x = r9.x + r9.y;
    r8.x = r9.z * 2 + r8.x;
    r8.y = saturate(r11.x ? r8.x : r0.w);
    r0.w = saturate(r5.z);
    r9.xyz = r0.www * float3(1.62637401,0.0731709972,1.66279101) + float3(0,0.471138,-0.662791014);
    r10.xyzw = cmp(r0.wwww >= float4(0,0.303333014,0.713333011,1));
    r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r10.xyz = r10.xyz + r10.yzw;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r9.xyz = r10.xyz * r9.xyz;
    r9.xy = float2(2,2) * r9.xy;
    r0.w = r9.x + r9.y;
    r0.w = r9.z * 2 + r0.w;
    r0.w = saturate(r10.w * 1 + r0.w);
    r9.xyz = r0.www * float3(-0.899999976,0.899999976,0) + float3(1,0.100000001,1);
    r10.xzw = saturate(r2.wzy);
    r11.xy = r10.xx * float2(0.210317001,5.14583302) + float2(0,-4.14583302);
    r12.xyz = cmp(r10.xxx >= float3(0,0.839999974,1));
    r12.xyw = r12.xyz ? float3(1,1,1) : 0;
    r12.xyz = r12.xyw + r12.yww;
    r12.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r12.xyz;
    r12.xyz = float3(0.5,0.5,0.5) * r12.xyz;
    r12.xyz = frac(r12.xyz);
    r11.xy = r12.xy * r11.xy;
    r11.xy = float2(2,2) * r11.xy;
    r0.w = r11.x + r11.y;
    r0.w = r12.z * 2 + r0.w;
    r0.w = saturate(r12.w * 1 + r0.w);
    r0.w = r0.w * 0.300000012 + 0.100000001;
    r11.xyz = r0.yyy * float3(0,0.233988002,308.339417) + float3(0,-0.526726007,-838.008606);
    r12.xyz = r0.yyy * float3(42.8571434,0.281340986,751.139709) + float3(0,0.993718982,-221.470535);
    r11.xyz = r11.xyz * r0.zzz + r12.xyz;
    r12.xyzw = cmp(r0.yyyy >= float4(0,0.023333,0.813332975,1));
    r12.xyzw = r12.xyzw ? float4(1,1,1,1) : 0;
    r12.xyz = r12.xyz + r12.yzw;
    r12.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r12.xyz;
    r12.xyz = float3(0.5,0.5,0.5) * r12.xyz;
    r12.xyz = frac(r12.xyz);
    r11.xyz = r12.xyz * r11.xyz;
    r11.xy = r11.xy + r11.xy;
    r11.x = r11.x + r11.y;
    r11.x = saturate(r11.z * 2 + r11.x);
    r11.x = r11.x * 0.5 + 0.5;
    r8.z = r11.x * r0.w;
    r11.xyz = r0.yyy * float3(0,0.345636994,57.6517296) + float3(0,-0.644463003,-144.320358);
    r12.xyz = r0.yyy * float3(42.8571434,0.286653012,115.826263) + float3(0,0.993658006,-29.1576347);
    r11.xyz = r11.xyz * r0.zzz + r12.xyz;
    r12.xyzw = cmp(r0.yyyy >= float4(0,0.023333,0.673332989,1));
    r12.xyzw = r12.xyzw ? float4(1,1,1,1) : 0;
    r0.yzw = r12.xyz + r12.yzw;
    r0.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r0.yzw;
    r0.yzw = float3(0.5,0.5,0.5) * r0.yzw;
    r0.yzw = frac(r0.yzw);
    r0.yzw = r0.yzw * r11.xyz;
    r0.yz = r0.yz + r0.yz;
    r0.y = r0.y + r0.z;
    r8.w = saturate(r0.w * 2 + r0.y);
    r0.x = mad(11, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, l(0.200000,0.600000,0,0)
    r11.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r10.xy = float2(0.300000012,0.524999976);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r11.xxxx, r10.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r11.yyyy, l(0.200000,0.600000,0,0)
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r11.zzzz, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r11.wwww, r3.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
    r7.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r7.xyzw
    r9.w = r4.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r9.xyzw
    r8.x = r4.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r8.xyzw
    r4.yzw = r5.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
    r0.yz = (int2)r0.xx + int2(9,10);
    r5.yzw = r2.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
    r6.x = r2.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r6.xyzw
  }
  return;
}