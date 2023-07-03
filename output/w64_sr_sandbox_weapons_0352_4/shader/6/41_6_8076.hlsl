// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:16 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
    r0.y = mad(3, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yz = (int2)r0.yy + int2(1,2);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).zwxy;
    r4.x = saturate(r3.y);
    r0.y = saturate(r1.w);
    r5.xyzw = r0.yyyy * float4(-2.702703,-295.639099,0.194573,0.133928999) + float4(1,84.3003311,1.14689398,-1.13392794);
    r6.xyzw = cmp(r0.yyyy >= float4(0.370000005,0,0.203333005,1));
    r0.z = r6.x ? 4.76837158e-007 : 0.500000477;
    r0.z = saturate(dot(r0.zz, r5.xx));
    r7.x = 0.150000006 * r0.z;
    r0.zw = r4.xx * float2(-1.27586198,-3.27586198) + float2(3.55172396,1);
    r5.x = r4.x * r4.x;
    r0.z = saturate(r0.z * r5.x + r0.w);
    r0.z = r0.z * 0.0549999997 + 0.0250000004;
    r8.xyzw = r0.yyyy * float4(0,-2.87750602,10.3448277,-6.97674513) + float4(0,1.53603899,0,6.97674513);
    r0.w = r0.y * r0.y;
    r5.x = r5.w * r0.w;
    r5.yz = r5.yz * r0.ww + r8.xy;
    r6.xyz = r6.yzw ? float3(1,1,1) : 0;
    r6.xy = r6.xy + r6.yz;
    r6.xy = float2(9.99999997e-007,9.99999997e-007) + r6.xy;
    r6.xy = float2(0.5,0.5) * r6.xy;
    r6.xy = frac(r6.xy);
    r5.yz = r6.xy * r5.yz;
    r5.yz = r5.yz + r5.yz;
    r5.y = saturate(r5.y + r5.z);
    r0.z = r5.y * r0.z;
    r5.y = saturate(cb0[5].y * 0.200000003 + -0.600000024);
    r5.y = r5.y * 0.850000024 + 0.150000006;
    r7.y = r5.y * r0.z;
    r6.xyzw = cmp(r0.yyyy >= float4(0,0.0966669992,0.856666982,1));
    r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
    r5.yzw = r6.xyz + r6.yzw;
    r5.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.yzw;
    r5.yzw = float3(0.5,0.5,0.5) * r5.yzw;
    r5.yzw = frac(r5.yzw);
    r5.yw = r5.yw * r8.zw;
    r5.yz = r5.yz + r5.yz;
    r0.z = r5.y + r5.z;
    r0.z = r5.w * 2 + r0.z;
    r0.z = min(1, r0.z);
    r7.z = 1.25 * r0.z;
    r6.xyzw = r0.yyyy * float4(0.0602819994,31225.2773,2.13888907,89929.7578) + float4(-1.20080996,-91802.8125,0,-29352.2148);
    r0.zw = r6.xy * r0.ww + r6.zw;
    r5.yzw = cmp(r0.yyy >= float3(0,0.959999979,1));
    r5.yzw = r5.yzw ? float3(1,1,1) : 0;
    r5.yz = r5.yz + r5.zw;
    r5.yz = float2(9.99999997e-007,9.99999997e-007) + r5.yz;
    r5.yz = float2(0.5,0.5) * r5.yz;
    r5.yz = frac(r5.yz);
    r0.zw = r5.yz * r0.zw;
    r0.zw = r0.zw + r0.zw;
    r0.z = saturate(r0.z + r0.w);
    r7.w = r0.z * 499 + 1;
    r0.y = saturate(r0.y * 2 + r5.x);
    r5.xyz = r0.yyy * float3(0.209250987,0.0783369988,-0.520290971) + float3(0.149044007,0.109154999,1);
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
    r4.yz = float2(0.25,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.yyxz
    r6.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.yyyy, r2.xyzw
    r5.w = r3.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.zzzz, r5.xyzw
    r4.w = r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.wwww, r4.xzwx
    r0.yz = (int2)r0.xx + int2(5,6);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r7.xyzw
    r3.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
  }
  return;
}