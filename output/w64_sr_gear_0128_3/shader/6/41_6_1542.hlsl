// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:53 2023
Buffer<float4> t0 : register(t0);

cbuffer cb10 : register(b10)
{
  float4 cb10[1];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[159];
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
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r2.xyzw = t0.Load(r1.x).xyzw;
    r3.xyzw = t0.Load(r1.y).xyzw;
    r0.yzw = t0.Load(r0.y).xyz;
    r4.xyzw = t0.Load(r1.z).xyzw;
    r1.xy = t0.Load(r1.w).xy;
    r5.x = cb10[0].x + 0.25;
    r5.y = cmp(cb0[23].x < cb0[24].x);
    r5.y = r5.y ? cb0[23].x : 0;
    r5.xy = (int2)r5.xy;
    r5.x = (int)r5.y + (int)r5.x;
    r5.y = cb0[22].x / r4.x;
    r5.z = saturate(r4.y);
    r5.w = saturate(r1.y);
    r6.xyz = r5.www * float3(0.675498009,305937.438,0.704698026) + float3(0,-153987.859,0.295302004);
    r7.xyzw = cmp(r5.wwww >= float4(0,0.503332019,0.503332973,1));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = r7.xyz + r7.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.xyz = r7.xyz * r6.xyz;
    r6.xy = float2(2,2) * r6.xy;
    r5.w = r6.x + r6.y;
    r5.w = r6.z * 2 + r5.w;
    r5.w = saturate(r7.w * 1 + r5.w);
    r5.w = r5.w * 4 + -2;
    r6.xyzw = r5.zzzz * float4(5,0.675498009,305937.438,0.704698026) + float4(2,0,-153987.859,0.295302004);
    r7.xyzw = cmp(r5.zzzz >= float4(0,0.503332019,0.503332973,1));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = r7.xyz + r7.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.yzw = r7.xyz * r6.yzw;
    r6.yz = float2(2,2) * r6.yz;
    r5.z = r6.y + r6.z;
    r5.z = r6.w * 2 + r5.z;
    r5.z = saturate(r7.w * 1 + r5.z);
    r5.z = -0.5 + r5.z;
    r7.w = r5.y + r2.w;
    r6.yzw = cb9[r5.x+32].zyw * float3(1,-1,1);
    r6.yzw = cb9[r5.x+32].zxy * r6.yzw;
    r8.xyz = cb9[r5.x+32].ywz * float3(-1,1,1);
    r6.yzw = cb9[r5.x+32].yzx * r8.xyz + -r6.yzw;
    r8.xyz = cb9[r5.x+32].wzy * float3(1,1,-1);
    r6.yzw = cb9[r5.x+32].www * r8.xyz + r6.yzw;
    r6.yzw = cb9[r5.x+32].xxx * cb9[r5.x+32].xyz + r6.yzw;
    r8.xyz = cb0[26].zxy * r6.zzz;
    r8.xyz = cb0[25].zxy * r6.yyy + r8.xyz;
    r6.yzw = cb0[27].zxy * r6.www + r8.xyz;
    r8.xyz = cb9[r5.x+0].yyy * cb0[26].yzx;
    r8.xyz = cb0[25].yzx * cb9[r5.x+0].xxx + r8.xyz;
    r8.xyz = cb0[27].yzx * cb9[r5.x+0].zzz + r8.xyz;
    r8.xyz = cb0[28].yzx + r8.xyz;
    r8.xyz = -r8.xyz + r2.yzx;
    r2.w = dot(r8.xyz, r8.xyz);
    r2.w = sqrt(r2.w);
    r2.w = r2.w + -r5.z;
    r5.y = cb0[22].x * r5.w;
    r5.z = dot(-r8.xyz, -r8.xyz);
    r5.z = rsqrt(r5.z);
    r9.xyz = -r8.zxy * r5.zzz;
    r5.yzw = r9.xyz * r5.yyy;
    r8.w = cmp(0 < r2.w);
    r2.w = cmp(r2.w < 0);
    r2.w = (int)-r8.w + (int)r2.w;
    r2.w = (int)r2.w;
    r9.xyz = r8.xyz * r6.yzw;
    r6.yzw = r6.wyz * r8.yzx + -r9.xyz;
    r8.x = dot(r6.yzw, r6.yzw);
    r8.x = rsqrt(r8.x);
    r6.yzw = r8.xxx * r6.yzw;
    r6.x = cb0[22].x * r6.x;
    r6.xyz = r6.yzw * r6.xxx;
    r5.yzw = r5.yzw * r2.www + r6.xyz;
    r0.yzw = r5.yzw + r0.yzw;
    r2.w = saturate(cb0[158].x * 10);
    r2.w = 1 + -r2.w;
    r6.xyz = r2.www * r0.yzw;
    r7.xyz = r6.xyz * cb0[148].xxx + r2.xyz;
    r0.y = cb0[158].x * r3.x;
    r3.y = r0.y * 6.28318548 + r3.y;
    r0.yzw = -cb9[r5.x+32].yzx * r7.zxy;
    r2.xyz = r7.yzx * -cb9[r5.x+32].zxy + -r0.yzw;
    r0.y = dot(r7.xyz, -cb9[r5.x+32].xyz);
    r2.w = -r0.y;
    r8.xyz = cb9[r5.x+32].www * r7.xyz;
    r8.w = 0;
    r2.xyzw = r8.xyzw + r2.xyzw;
    r0.yzw = cb9[r5.x+32].zxy * r2.yzx;
    r0.yzw = cb9[r5.x+32].yzx * r2.zxy + -r0.yzw;
    r0.yzw = cb9[r5.x+32].www * r2.xyz + r0.yzw;
    r0.yzw = r2.www * cb9[r5.x+32].xyz + r0.yzw;
    r0.yzw = cb9[r5.x+0].xyz + r0.yzw;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r6.w = sqrt(r0.y);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r2.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xxxx, r7.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.zzzz, r4.xyzw
    r1.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.wwww, r1.xyzw
  }
  return;
}