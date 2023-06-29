// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[155];
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
    r0.y = mad(3, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yz = (int2)r0.yy + int2(1,2);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).xyzw;
    r0.y = cb0[22].x / r3.z;
    r4.w = r1.w + r0.y;
    r0.yzw = -cb0[4].xyz + r2.xyz;
    r0.yzw = r0.yzw * float3(1.66666663,1.66666663,1.66666663) + float3(0.5,0.5,0.5);
    r0.yzw = t1.SampleLevel(s1_s, r0.yzw, 0).xyz;
    r0.yzw = r0.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r0.yzw = cb0[22].xxx * r0.yzw;
    r0.yzw = r0.yzw * float3(50,50,50) + r1.xyz;
    r5.xyz = r2.xyz * float3(0.333333343,0.333333343,0.333333343) + float3(0.5,0.5,0.5);
    r5.xyz = t1.SampleLevel(s1_s, r5.xyz, 0).xyz;
    r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.xyz = cb0[22].xxx * r5.xyz;
    r1.xyz = r5.xyz * float3(10,10,10) + r1.xyz;
    r5.xy = cb0[142].yx + -r2.yx;
    r5.xy = cb0[142].wz * r5.xy;
    r6.xyzw = t2.SampleLevel(s2_s, r5.xy, 0).xyzw;
    r5.xyz = t3.SampleLevel(s2_s, r5.xy, 0).xzw;
    r1.w = max(9.99999997e-007, r5.z);
    r6.xyzw = r6.xyzw / r1.wwww;
    r1.w = r5.y / r1.w;
    r5.yzw = r6.xyz + -r2.xyz;
    r6.x = dot(r5.yzw, r5.yzw);
    r6.x = sqrt(r6.x);
    r6.xy = max(float2(9.99999997e-007,9.99999997e-007), r6.xw);
    r6.y = r6.x / r6.y;
    r6.y = min(1, r6.y);
    r6.y = 1 + -r6.y;
    r1.w = max(9.99999997e-007, r1.w);
    r6.y = log2(r6.y);
    r1.w = r6.y * r1.w;
    r1.w = exp2(r1.w);
    r1.w = r5.x * r1.w;
    r5.xyz = r5.yzw / r6.xxx;
    r5.xyz = r5.xyz * r1.www;
    r5.xyz = cb0[22].xxx * r5.xyz;
    r1.xyz = r5.xyz * float3(0.100000001,0.100000001,0.100000001) + r1.xyz;
    r1.xyz = r1.xyz + -r0.yzw;
    r0.yzw = r1.xyz * float3(0.5,0.5,0.5) + r0.yzw;
    r1.x = saturate(cb0[154].x + cb0[154].x);
    r1.x = 1 + -r1.x;
    r4.xyz = r1.xxx * r0.yzw;
    r2.xyz = r4.xyz * cb0[136].xxx + r2.xyz;
    r0.y = cb0[154].x * r2.w;
    r3.x = r0.y * 6.28318548 + r3.x;
    r0.x = mad(3, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r0.yz = (int2)r0.xx + int2(1,2);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
  }
  return;
}