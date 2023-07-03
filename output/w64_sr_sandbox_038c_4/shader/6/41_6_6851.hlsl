// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb10 : register(b10)
{
  float4 cb10[3];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[32];
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
  float4 r0,r1,r2,r3,r4,r5,r6;
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
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyz = (int3)r0.yyy + int3(1,2,3);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r2.x = t0.Load(r2.z).x;
    r0.y = cb10[2].x + 0.25;
    r0.y = (int)r0.y;
    r0.w = cb0[22].x / r4.z;
    r5.x = saturate(r1.w);
    r5.x = r5.x * 4 + 4;
    r6.w = r1.w + r0.w;
    r5.yzw = cb9[r0.y+0].yyy * cb0[26].xyz;
    r5.yzw = cb0[25].xyz * cb9[r0.y+0].xxx + r5.yzw;
    r5.yzw = cb0[27].xyz * cb9[r0.y+0].zzz + r5.yzw;
    r5.yzw = cb0[28].xyz + r5.yzw;
    r5.yzw = r5.yzw + -r3.xyz;
    r0.y = dot(r5.yzw, r5.yzw);
    r0.w = sqrt(r0.y);
    r0.w = -0.0500000007 + r0.w;
    r1.w = cb0[22].x * cb0[5].y;
    r0.y = rsqrt(r0.y);
    r5.yzw = r5.yzw * r0.yyy;
    r0.y = cmp(0 < r0.w);
    r0.w = cmp(r0.w < 0);
    r0.y = (int)-r0.y + (int)r0.w;
    r0.y = (int)r0.y;
    r5.yzw = r5.yzw * r0.yyy;
    r1.xyz = r5.yzw * r1.www + r1.xyz;
    r5.yzw = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
    r5.yzw = t1.SampleLevel(s1_s, r5.yzw, 0).xyz;
    r5.yzw = r5.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r5.xyz = r5.yzw * r5.xxx;
    r1.xyz = r5.xyz * cb0[22].xxx + r1.xyz;
    r0.y = saturate(cb0[172].x * 5);
    r0.y = 1 + -r0.y;
    r6.xyz = r1.xyz * r0.yyy;
    r3.xyz = r6.xyz * cb0[155].xxx + r3.xyz;
    r0.y = cb0[172].x * r3.w;
    r4.x = r0.y * 6.28318548 + r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r4.xyzw
    r2.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}