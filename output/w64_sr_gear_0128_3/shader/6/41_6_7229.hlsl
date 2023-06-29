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
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yzw = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).xyzw;
    r4.yz = t0.Load(r0.w).xy;
    r5.z = saturate(r3.w);
    r0.yzw = r5.zzz * float3(-0.258823007,0.472393006,3.32432389) + float3(1.25882304,0,-2.32432389);
    r6.x = r5.z * r5.z;
    r0.y = r6.x * r0.y;
    r6.w = min(1, r0.y);
    r0.y = saturate(r1.w);
    r7.xy = float2(0.293193996,2.6875) * r0.yy;
    r7.zw = r0.yy * float2(0.749984026,0.723769009) + float2(-0.0431779996,-2.41126895);
    r8.x = r0.y * r0.y;
    r7.xy = r7.wz * r8.xx + r7.yx;
    r7.y = max(0, r7.y);
    r7.y = r7.y * 2.91199994 + 0.405000001;
    r9.xy = r7.yy * float2(1,-1) + float2(0,1);
    r7.yzw = cmp(r0.yyy >= float3(0,0.999998987,1));
    r7.yzw = r7.yzw ? float3(1,1,1) : 0;
    r8.yzw = r7.yzw + r7.zww;
    r8.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.yzw;
    r8.yzw = float3(0.5,0.5,0.5) * r8.yzw;
    r8.yzw = frac(r8.yzw);
    r7.yz = r8.yz + r8.yz;
    r7.y = r7.y + r7.z;
    r7.y = r8.w * 2 + r7.y;
    r7.y = r7.y + r7.w;
    r7.y = min(1, r7.y);
    r10.xyz = r7.yyy * float3(50,50,50) + float3(50,50,50);
    r7.yzw = cmp(r5.zzz >= float3(0,0.814999998,1));
    r11.xyw = r7.yzw ? float3(1,1,1) : 0;
    r7.yzw = r11.xyw + r11.yww;
    r7.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.yzw;
    r7.yzw = float3(0.5,0.5,0.5) * r7.yzw;
    r7.yzw = frac(r7.yzw);
    r0.zw = r7.yz * r0.zw;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r7.w * 2 + r0.z;
    r0.z = saturate(r11.w * 1 + r0.z);
    r9.z = r0.z * 0.975000024 + 0.0250000004;
    r7.x = saturate(r7.x);
    r7.xyz = r7.xxx * float3(0.5,0,0) + float3(0.5,1,1);
    r0.z = saturate(r4.y);
    r8.yz = r0.zz * float2(0.210317001,5.14583302) + float2(0,-4.14583302);
    r11.xyz = cmp(r0.zzz >= float3(0,0.839999974,1));
    r11.xyw = r11.xyz ? float3(1,1,1) : 0;
    r11.xyz = r11.xyw + r11.yww;
    r11.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r11.xyz;
    r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
    r11.xyz = frac(r11.xyz);
    r0.zw = r11.xy * r8.yz;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r11.z * 2 + r0.z;
    r0.z = saturate(r11.w * 1 + r0.z);
    r0.z = r0.z * 0.75 + 0.5;
    r11.xyzw = r0.yyyy * float4(0,0.233988002,0.850342989,-1.72500002) + float4(0,-0.526726007,-1.63832998,4.44999981);
    r12.xyzw = r0.yyyy * float4(42.8571434,0.281340986,0.866373003,-3.7249999) + float4(0,0.993718982,0.921615005,1);
    r11.xyzw = r11.wxyz * r8.xxxx + r12.wxyz;
    r12.xyzw = cmp(r0.yyyy >= float4(0,0.023333,0.813332975,1));
    r12.xyzw = r12.xyzw ? float4(1,1,1,1) : 0;
    r8.yzw = r12.xyz + r12.yzw;
    r8.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.yzw;
    r8.yzw = float3(0.5,0.5,0.5) * r8.yzw;
    r8.yzw = frac(r8.yzw);
    r8.yzw = r8.yzw * r11.yzw;
    r8.yz = float2(2,2) * r8.yz;
    r0.w = r8.y + r8.z;
    r0.w = r8.w * 2 + r0.w;
    r0.w = saturate(r12.w * 1 + r0.w);
    r0.w = r0.w * 0.5 + 0.5;
    r9.w = r0.z * r0.w;
    r12.xyzw = r0.yyyy * float4(0,0.831770003,1000000,-1.16823494) + float4(0,-0.663537979,0,1.00000203);
    r0.zw = r12.xy * r8.xx + r12.zw;
    r8.xyzw = cmp(r0.yyyy >= float4(0,9.99999997e-007,1.99999999e-006,1));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r8.xz = r8.xz * r0.zw;
    r0.yz = r8.xy + r8.xy;
    r0.y = r0.y + r0.z;
    r8.x = saturate(r8.z * 2 + r0.y);
    r11.x = saturate(r11.x);
    r8.y = r11.x * 19 + 1;
    r0.x = mad(9, (int)vThreadID.x, (int)r0.x);
    r6.xyz = float3(1,1,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r6.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r5.xyw = float3(1,1,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.xxxx, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.zzzz, r2.xyzw
    r10.w = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.wwww, r10.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
    r7.w = r3.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r7.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r9.xyzw
    r8.z = r3.z;
    r8.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r8.xyzw
    r4.x = r3.w;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}