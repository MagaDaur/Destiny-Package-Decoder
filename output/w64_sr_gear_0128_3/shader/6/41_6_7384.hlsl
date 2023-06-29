// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:36 2023
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
  float4 cb0[154];
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
    r0.z = (uint)vThreadID.x << 2;
    r0.xy = (int2)r0.zz + (int2)r0.xy;
    r1.xyz = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r1.x).xyzw;
    r3.xyzw = t0.Load(r1.y).xyzw;
    r1.xyw = t0.Load(r0.y).xyz;
    r4.xyz = t0.Load(r1.z).xyz;
    r0.y = cb10[0].x + 0.25;
    r0.y = (int)r0.y;
    r0.w = (int)cb0[23].x;
    r0.y = (int)r0.w + (int)r0.y;
    r0.w = cb10[1].x + 0.25;
    r0.w = (int)r0.w;
    r1.z = cmp(cb0[23].x < cb0[24].x);
    r1.z = r1.z ? cb0[23].x : 0;
    r1.z = (int)r1.z;
    r0.w = (int)r0.w + (int)r1.z;
    r1.z = cb0[22].x / r3.w;
    r5.x = saturate(r4.z);
    r5.x = r5.x * -0.0699999928 + -0.0500000007;
    r5.y = saturate(r2.w);
    r5.zw = r5.yy * float2(0.0689650029,-1.93103504) + float2(0.862069011,1);
    r5.y = r5.y * r5.y;
    r5.y = saturate(r5.z * r5.y + r5.w);
    r5.y = r5.y * 0.5 + 0.5;
    r6.w = r2.w + r1.z;
    r7.xyz = cb9[r0.y+0].yyy * cb0[26].xyz;
    r7.xyz = cb0[25].xyz * cb9[r0.y+0].xxx + r7.xyz;
    r7.xyz = cb0[27].xyz * cb9[r0.y+0].zzz + r7.xyz;
    r7.xyz = cb0[28].xyz + r7.xyz;
    r7.xyz = r7.xyz + -r2.xyz;
    r0.y = dot(r7.xyz, r7.xyz);
    r1.z = sqrt(r0.y);
    r1.z = -0.00499999989 + r1.z;
    r2.w = cb0[22].x * r5.y;
    r0.y = rsqrt(r0.y);
    r5.yzw = r7.xyz * r0.yyy;
    r0.y = cmp(0 < r1.z);
    r1.z = cmp(r1.z < 0);
    r0.y = (int)-r0.y + (int)r1.z;
    r0.y = (int)r0.y;
    r5.yzw = r5.yzw * r0.yyy;
    r1.xyz = r5.yzw * r2.www + r1.xyw;
    r5.yzw = r2.xyz * float3(0.625,0.625,0.625) + float3(0.5,0.5,0.5);
    r5.yzw = t1.SampleLevel(s1_s, r5.yzw, 0).xyz;
    r5.yzw = r5.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r7.x = cb0[6].z;
    r7.z = 1;
    r5.yzw = r7.xxz * r5.yzw;
    r7.x = cb0[22].x;
    r7.z = cb0[6].z;
    r5.yzw = r7.xxz * r5.yzw;
    r7.xy = float2(1.29999995,2);
    r7.z = cb0[22].x;
    r1.xyz = r5.yzw * r7.xyz + r1.xyz;
    r5.xyz = cb0[152].xyz * r5.xxx;
    r1.xyz = r5.xyz * cb0[151].xxx + r1.xyz;
    r0.y = saturate(cb0[153].x * 5);
    r0.y = 1 + -r0.y;
    r1.xyz = r1.xyz * r0.yyy;
    r6.xyz = r1.xyz * cb0[138].xxx + r2.xyz;
    r0.y = cb0[153].x * r3.x;
    r3.y = r0.y * 6.28318548 + r3.y;
    r2.xyz = -cb9[r0.w+32].yzx * r6.zxy;
    r2.xyz = r6.yzx * -cb9[r0.w+32].zxy + -r2.xyz;
    r0.y = dot(r6.xyz, -cb9[r0.w+32].xyz);
    r2.w = -r0.y;
    r5.xyz = cb9[r0.w+32].www * r6.xyz;
    r5.w = 0;
    r2.xyzw = r5.xyzw + r2.xyzw;
    r5.xyz = cb9[r0.w+32].zxy * r2.yzx;
    r5.xyz = cb9[r0.w+32].yzx * r2.zxy + -r5.xyz;
    r2.xyz = cb9[r0.w+32].www * r2.xyz + r5.xyz;
    r2.xyz = r2.www * cb9[r0.w+32].xyz + r2.xyz;
    r2.xyz = cb9[r0.w+0].xyz + r2.xyz;
    r2.xyz = -cb12[7].xyz + r2.xyz;
    r0.y = dot(r2.xyz, r2.xyz);
    r1.w = sqrt(r0.y);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r4.xyzw
  }
  return;
}