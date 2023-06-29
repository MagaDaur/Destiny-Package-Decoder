// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:34 2023
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[174];
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
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.xy = t0.Load(r2.w).xy;
    r0.y = cb0[22].x / r4.w;
    r0.z = saturate(r2.x);
    r6.xyz = r0.zzz * float3(0,10,0) + float3(1,-5,1);
    r7.w = r1.w + r0.y;
    r0.yzw = -cb0[8].xyz + r3.xyz;
    r0.yzw = r0.yzw * float3(0.0500000007,0.0500000007,0.0500000007) + float3(0.5,0.5,0.5);
    r0.yzw = t1.SampleLevel(s1_s, r0.yzw, 0).xyz;
    r0.yzw = r0.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r0.yzw = r0.yzw * r6.xyz;
    r0.yzw = cb0[22].xxx * r0.yzw;
    r0.yzw = r0.yzw * float3(-10,-10,-10) + r1.xyz;
    r1.xy = cb0[162].yx + -r3.yx;
    r1.xy = cb0[162].wz * r1.xy;
    r6.xyzw = t2.SampleLevel(s2_s, r1.xy, 0).xyzw;
    r1.xyz = t3.SampleLevel(s2_s, r1.xy, 0).xzw;
    r1.z = max(9.99999997e-007, r1.z);
    r6.xyzw = r6.xyzw / r1.zzzz;
    r1.y = r1.y / r1.z;
    r6.xyz = r6.xyz + -r3.xyz;
    r1.z = dot(r6.xyz, r6.xyz);
    r1.z = sqrt(r1.z);
    r1.yz = max(float2(9.99999997e-007,9.99999997e-007), r1.yz);
    r1.w = max(9.99999997e-007, r6.w);
    r1.w = r1.z / r1.w;
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r1.w = log2(r1.w);
    r1.y = r1.y * r1.w;
    r1.y = exp2(r1.y);
    r1.x = r1.x * r1.y;
    r1.yzw = r6.xyz / r1.zzz;
    r1.xyz = r1.yzw * r1.xxx;
    r0.yzw = r1.xyz * cb0[22].xxx + r0.yzw;
    r1.xyz = cb0[172].xyz * cb0[171].xxx;
    r0.yzw = r1.xyz * float3(-0.300000012,-0.300000012,-0.300000012) + r0.yzw;
    r1.x = saturate(cb0[173].x * 1.5);
    r1.x = 1 + -r1.x;
    r7.xyz = r1.xxx * r0.yzw;
    r3.xyz = r7.xyz * cb0[160].xxx + r3.xyz;
    r0.y = cb0[173].x * r3.w;
    r4.x = r0.y * 6.28318548 + r4.x;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
    r2.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}