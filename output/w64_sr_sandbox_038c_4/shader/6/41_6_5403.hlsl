// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:03 2023
Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb10 : register(b10)
{
  float4 cb10[2];
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
  float4 cb0[163];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
    r4.xyzw = t0.Load(r1.z).xyzw;
    r1.xy = t0.Load(r1.w).xy;
    r0.y = cb10[1].x + 0.25;
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = cb0[22].x / r4.x;
    r0.w = saturate(r1.y);
    r5.xy = r0.ww * float2(0.416667014,-1.58333302) + float2(0.166666999,1);
    r0.w = r0.w * r0.w;
    r0.w = saturate(r5.x * r0.w + r5.y);
    r0.w = r0.w * 3 + 3;
    r5.w = r2.w + r0.z;
    r6.xyz = -cb0[6].xyz + r2.xyz;
    r6.xyz = r6.xyz * float3(0.666666687,0.666666687,0.666666687) + float3(0.5,0.5,0.5);
    r6.xyz = t1.SampleLevel(s1_s, r6.xyz, 0).xyz;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = -cb0[5].xyz + r2.xyz;
    r7.xyz = r7.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
    r7.xyz = t1.SampleLevel(s1_s, r7.xyz, 0).xyz;
    r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = r7.xyz * r0.www;
    r7.xyz = cb0[22].xxx * r7.xyz;
    r6.xyz = r6.xyz * float3(0.349999994,0.349999994,0.349999994) + r7.xyz;
    r0.z = saturate(cb0[162].x * 5);
    r0.z = 1 + -r0.z;
    r6.xyz = r6.xyz * r0.zzz;
    r5.xyz = r6.xyz * cb0[147].xxx + r2.xyz;
    r0.z = cb0[162].x * r3.x;
    r3.y = r0.z * 6.28318548 + r3.y;
    r2.xyz = -cb9[r0.y+32].yzx * r5.zxy;
    r2.xyz = r5.yzx * -cb9[r0.y+32].zxy + -r2.xyz;
    r0.z = dot(r5.xyz, -cb9[r0.y+32].xyz);
    r2.w = -r0.z;
    r7.xyz = cb9[r0.y+32].www * r5.xyz;
    r7.w = 0;
    r2.xyzw = r7.xyzw + r2.xyzw;
    r7.xyz = cb9[r0.y+32].zxy * r2.yzx;
    r7.xyz = cb9[r0.y+32].yzx * r2.zxy + -r7.xyz;
    r2.xyz = cb9[r0.y+32].www * r2.xyz + r7.xyz;
    r2.xyz = r2.www * cb9[r0.y+32].xyz + r2.xyz;
    r0.yzw = cb9[r0.y+0].xyz + r2.xyz;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r6.w = sqrt(r0.y);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r2.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xxxx, r5.xyzw
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