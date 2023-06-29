// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:53 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
    r4.xzw = t0.Load(r2.y).xyz;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.zw = t0.Load(r2.w).xy;
    r6.xyz = saturate(r5.zwy);
    r7.xyzw = r6.xxxy * float4(0.675823987,1.5,0.625,-0.236842006) + float4(0,-0.5,0.125,1.47368503);
    r0.yzw = cmp(r6.xxx >= float3(0,0.606666982,1));
    r8.xyw = r0.yzw ? float3(1,1,1) : 0;
    r0.yzw = r8.xyw + r8.yww;
    r0.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r0.yzw;
    r0.yzw = float3(0.5,0.5,0.5) * r0.yzw;
    r0.yzw = frac(r0.yzw);
    r0.yz = r0.yz * r7.xy;
    r0.yz = float2(2,2) * r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r0.w * 2 + r0.y;
    r0.y = saturate(r8.w * 1 + r0.y);
    r0.y = r0.y * 0.720000029 + 0.0799999982;
    r0.z = saturate(r3.w);
    r8.xyzw = r0.zzzz * float4(-1.51612902,0.171669006,-1.70588195,0.133928999) + float4(0.516129017,0.534213006,1,-1.13392794);
    r0.w = r0.z * r0.z;
    r7.x = r8.w * r0.w;
    r7.y = r8.x * r0.w + 1;
    r7.y = min(1, r7.y);
    r7.y = r7.y * 0.75 + 0.25;
    r9.y = r7.y * r0.y;
    r0.y = saturate(r1.w * 0.5 + -0.5);
    r0.y = r0.y * 0.850000024 + 0.150000006;
    r9.z = r7.z * r0.y;
    r0.y = r6.y * -2.23684192 + 1;
    r6.y = r6.y * r6.y;
    r0.y = saturate(r7.w * r6.y + r0.y);
    r0.y = r0.y * 0.0157499984 + 0.00425000023;
    r6.y = saturate(cb0[4].y * 0.142857 + -0.428570986);
    r6.y = r6.y * 0.600000024 + 0.400000006;
    r0.y = r6.y * r0.y;
    r6.y = saturate(r8.y * r0.w + r8.z);
    r6.y = r6.y * 0.999000013 + 0.00100000005;
    r9.w = r6.y * r0.y;
    r8.xyzw = r0.zzzz * float4(0,46.6472206,27.272728,90.9620743) + float4(0,-115.451866,0,-22.1574287);
    r7.yz = r8.xy * r0.ww + r8.zw;
    r8.xyzw = cmp(r0.zzzz >= float4(0,0.0366670005,0.649999976,1));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r8.xz = r8.xz * r7.yz;
    r7.yz = r8.xy + r8.xy;
    r0.y = r7.y + r7.z;
    r0.y = saturate(r8.z * 2 + r0.y);
    r6.y = saturate(cb0[3].x);
    r6.y = 1 + -r6.y;
    r8.x = r6.y * r0.y;
    r0.y = saturate(r2.z);
    r6.y = r0.y * 0.714285016 + 0.285715014;
    r0.y = r0.y * r0.y;
    r0.y = r6.y * r0.y;
    r0.y = r0.y * 25 + 5;
    r10.xyzw = r0.zzzz * float4(-0.0678339973,0.685472012,0,-2.90145111) + float4(-1.77796197,0.402781993,1,1.81319904);
    r7.yz = r10.xy * r0.ww + r10.zw;
    r10.xyz = cmp(r0.zzz >= float3(0,0.523333013,1));
    r10.xyz = r10.xyz ? float3(1,1,1) : 0;
    r10.xy = r10.xy + r10.yz;
    r10.xy = float2(9.99999997e-007,9.99999997e-007) + r10.xy;
    r10.xy = float2(0.5,0.5) * r10.xy;
    r10.xy = frac(r10.xy);
    r7.yz = r10.xy * r7.yz;
    r7.yz = r7.yz + r7.yz;
    r0.w = saturate(r7.y + r7.z);
    r8.y = r0.y * r0.w;
    r0.y = saturate(r0.z * 2 + r7.x);
    r7.xyz = r0.yyy * float3(0,-0.0886410028,-0.0109749995) + float3(1,0.126542002,0.0497069992);
    r0.y = (uint)vThreadID.x << 3;
    r0.x = (int)r0.y + (int)r0.x;
    r6.x = 0.349999994;
    r6.w = cb0[5].x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xxzw
    r10.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.yyyy, r3.xyzw
    r7.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.zzzz, r7.xyzw
    r4.xy = r6.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.wwww, r4.xyzw
    r0.yzw = (int3)r0.xxx + int3(5,6,7);
    r9.x = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r9.xyzw
    r8.zw = r5.xy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r8.xyzw
    r2.xy = r5.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}