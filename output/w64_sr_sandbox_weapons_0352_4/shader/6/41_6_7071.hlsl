// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:21 2023
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
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yzw = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).xyzw;
    r4.z = t0.Load(r0.w).x;
    r5.x = saturate(r4.z);
    r0.y = saturate(r2.w);
    r6.xyzw = r0.yyyy * float4(-2.702703,-295.639099,0.194573,0.133928999) + float4(1,84.3003311,1.14689398,-1.13392794);
    r7.xyzw = cmp(r0.yyyy >= float4(0.370000005,0,0.203333005,1));
    r0.z = r7.x ? 4.76837158e-007 : 0.500000477;
    r0.z = saturate(dot(r0.zz, r6.xx));
    r8.y = 0.150000006 * r0.z;
    r0.zw = r5.xx * float2(0.326530993,-1.67346895) + float2(0.346938998,1);
    r6.x = r5.x * r5.x;
    r0.z = saturate(r0.z * r6.x + r0.w);
    r0.z = r0.z * 0.125 + 0.0250000004;
    r9.xyzw = r0.yyyy * float4(0,-2.87750602,10.3448277,-6.97674513) + float4(0,1.53603899,0,6.97674513);
    r0.w = r0.y * r0.y;
    r6.x = r6.w * r0.w;
    r6.yz = r6.yz * r0.ww + r9.xy;
    r7.xyz = r7.yzw ? float3(1,1,1) : 0;
    r7.xy = r7.xy + r7.yz;
    r7.xy = float2(9.99999997e-007,9.99999997e-007) + r7.xy;
    r7.xy = float2(0.5,0.5) * r7.xy;
    r7.xy = frac(r7.xy);
    r6.yz = r7.xy * r6.yz;
    r6.yz = r6.yz + r6.yz;
    r6.y = saturate(r6.y + r6.z);
    r0.z = r6.y * r0.z;
    r6.y = saturate(r1.w * 0.166666999 + -0.666666985);
    r6.z = r6.y * -0.783333004 + 0.783333004;
    r6.w = r6.y * r6.y;
    r6.y = r6.z * r6.w + r6.y;
    r6.y = min(1, r6.y);
    r6.y = r6.y * 0.75 + 0.25;
    r8.z = r6.y * r0.z;
    r7.xyzw = cmp(r0.yyyy >= float4(0,0.0966669992,0.856666982,1));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r6.yzw = r7.xyz + r7.yzw;
    r6.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.yzw;
    r6.yzw = float3(0.5,0.5,0.5) * r6.yzw;
    r6.yzw = frac(r6.yzw);
    r6.yw = r6.yw * r9.zw;
    r6.yz = r6.yz + r6.yz;
    r0.z = r6.y + r6.z;
    r0.z = r6.w * 2 + r0.z;
    r8.w = min(1, r0.z);
    r7.xyzw = r0.yyyy * float4(39.6231232,31225.2773,38.5999985,89929.7578) + float4(-77.1614609,-91802.8125,0,-29352.2148);
    r0.zw = r7.xy * r0.ww + r7.zw;
    r6.yzw = cmp(r0.yyy >= float3(0,0.959999979,1));
    r6.yzw = r6.yzw ? float3(1,1,1) : 0;
    r6.yz = r6.yz + r6.zw;
    r6.yz = float2(9.99999997e-007,9.99999997e-007) + r6.yz;
    r6.yz = float2(0.5,0.5) * r6.yz;
    r6.yz = frac(r6.yz);
    r0.zw = r6.yz * r0.zw;
    r0.zw = r0.zw + r0.zw;
    r0.z = saturate(r0.z + r0.w);
    r4.x = r0.z * 999 + 1;
    r0.y = saturate(r0.y * 2 + r6.x);
    r6.xyz = r0.yyy * float3(0.209250987,0.0783369988,-0.520290971) + float3(0.149044007,0.109154999,1);
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
    r5.yzw = float3(0,0.25,0.25);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.zwxy
    r7.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.yyyy, r2.xyzw
    r6.w = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.zzzz, r6.xyzw
    r5.zw = r3.yz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.wwww, r5.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
    r8.x = r5.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r8.xyzw
    r4.y = r3.w;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r4.xyzw
  }
  return;
}