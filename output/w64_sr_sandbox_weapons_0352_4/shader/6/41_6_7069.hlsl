// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:21 2023
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

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
  float4 cb0[173];
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
    r4.x = t0.Load(r1.z).x;
    r0.y = cb10[0].x + 0.25;
    r0.w = cb10[1].x + 0.25;
    r0.yw = (int2)r0.yw;
    r1.z = cmp(cb0[23].x < cb0[24].x);
    r1.z = r1.z ? cb0[23].x : 0;
    r1.z = (int)r1.z;
    r0.w = (int)r0.w + (int)r1.z;
    r1.z = cb0[22].x / r3.w;
    r5.w = r2.w + r1.z;
    r6.xyz = cb9[r0.y+0].yyy * cb0[26].xyz;
    r6.xyz = cb0[25].xyz * cb9[r0.y+0].xxx + r6.xyz;
    r6.xyz = cb0[27].xyz * cb9[r0.y+0].zzz + r6.xyz;
    r6.xyz = cb0[28].xyz + r6.xyz;
    r6.xyz = r6.xyz + -r2.xyz;
    r0.y = dot(r6.xyz, r6.xyz);
    r1.z = sqrt(r0.y);
    r1.z = -0.25 + r1.z;
    r2.w = cb0[22].x * cb0[7].y;
    r0.y = rsqrt(r0.y);
    r6.xyz = r6.xyz * r0.yyy;
    r0.y = cmp(0 < r1.z);
    r1.z = cmp(r1.z < 0);
    r0.y = (int)-r0.y + (int)r1.z;
    r0.y = (int)r0.y;
    r6.xyz = r6.xyz * r0.yyy;
    r1.xyz = r6.xyz * r2.www + r1.xyw;
    r6.xyz = r2.xyz * float3(0.100000001,0.100000001,0.100000001) + float3(0.5,0.5,0.5);
    r6.xyz = t1.SampleLevel(s1_s, r6.xyz, 0).xyz;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r6.xyz = cb0[22].xxx * r6.xyz;
    r1.xyz = r6.xyz * float3(20,20,20) + r1.xyz;
    r6.xy = cb0[161].yx + -r2.yx;
    r6.xy = cb0[161].wz * r6.xy;
    r7.xyzw = t2.SampleLevel(s2_s, r6.xy, 0).xyzw;
    r6.xyz = t3.SampleLevel(s2_s, r6.xy, 0).xzw;
    r0.y = max(9.99999997e-007, r6.z);
    r7.xyzw = r7.xyzw / r0.yyyy;
    r0.y = r6.y / r0.y;
    r6.yzw = r7.xyz + -r2.xyz;
    r1.w = dot(r6.yzw, r6.yzw);
    r1.w = sqrt(r1.w);
    r1.w = max(9.99999997e-007, r1.w);
    r2.w = max(9.99999997e-007, r7.w);
    r2.w = r1.w / r2.w;
    r2.w = min(1, r2.w);
    r2.w = 1 + -r2.w;
    r0.y = max(9.99999997e-007, r0.y);
    r2.w = log2(r2.w);
    r0.y = r2.w * r0.y;
    r0.y = exp2(r0.y);
    r0.y = r6.x * r0.y;
    r6.xyz = r6.yzw / r1.www;
    r6.xyz = r6.xyz * r0.yyy;
    r1.xyz = r6.xyz * cb0[22].xxx + r1.xyz;
    r0.y = saturate(cb0[172].x * 5);
    r0.y = 1 + -r0.y;
    r1.xyz = r1.xyz * r0.yyy;
    r5.xyz = r1.xyz * cb0[158].xxx + r2.xyz;
    r0.y = cb0[172].x * r3.x;
    r3.y = r0.y * 6.28318548 + r3.y;
    r2.xyz = -cb9[r0.w+32].yzx * r5.zxy;
    r2.xyz = r5.yzx * -cb9[r0.w+32].zxy + -r2.xyz;
    r0.y = dot(r5.xyz, -cb9[r0.w+32].xyz);
    r2.w = -r0.y;
    r6.xyz = cb9[r0.w+32].www * r5.xyz;
    r6.w = 0;
    r2.xyzw = r6.xyzw + r2.xyzw;
    r6.xyz = cb9[r0.w+32].zxy * r2.yzx;
    r6.xyz = cb9[r0.w+32].yzx * r2.zxy + -r6.xyz;
    r2.xyz = cb9[r0.w+32].www * r2.xyz + r6.xyz;
    r2.xyz = r2.www * cb9[r0.w+32].xyz + r2.xyz;
    r2.xyz = cb9[r0.w+0].xyz + r2.xyz;
    r2.xyz = -cb12[7].xyz + r2.xyz;
    r0.y = dot(r2.xyz, r2.xyz);
    r1.w = sqrt(r0.y);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
    r4.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r4.xyzw
  }
  return;
}