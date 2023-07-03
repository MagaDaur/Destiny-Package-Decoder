// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:16 2023
Buffer<float4> t0 : register(t0);

cbuffer cb10 : register(b10)
{
  float4 cb10[1];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[140];
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
    r2.xyz = t0.Load(r2.z).xyz;
    r0.y = cb10[0].x + 0.25;
    r0.w = cmp(cb0[23].x < cb0[24].x);
    r0.w = r0.w ? cb0[23].x : 0;
    r0.yw = (int2)r0.yw;
    r0.y = (int)r0.w + (int)r0.y;
    r0.w = cb0[22].x / r4.z;
    r5.x = saturate(r2.z);
    r5.x = r5.x * 0.0899999961 + 0.0299999993;
    r6.w = r1.w + r0.w;
    r5.yzw = cb9[r0.y+0].yyy * cb0[26].xyz;
    r5.yzw = cb0[25].xyz * cb9[r0.y+0].xxx + r5.yzw;
    r5.yzw = cb0[27].xyz * cb9[r0.y+0].zzz + r5.yzw;
    r5.yzw = cb0[28].xyz + r5.yzw;
    r7.xyz = cb9[r0.y+32].zyw * float3(1,-1,1);
    r7.xyz = cb9[r0.y+32].zxy * r7.xyz;
    r8.xyz = cb9[r0.y+32].ywz * float3(-1,1,1);
    r7.xyz = cb9[r0.y+32].yzx * r8.xyz + -r7.xyz;
    r8.xyz = cb9[r0.y+32].wzy * float3(1,1,-1);
    r7.xyz = cb9[r0.y+32].www * r8.xyz + r7.xyz;
    r7.xyz = cb9[r0.y+32].xxx * cb9[r0.y+32].xyz + r7.xyz;
    r8.xyz = cb0[26].xyz * r7.yyy;
    r7.xyw = cb0[25].xyz * r7.xxx + r8.xyz;
    r7.xyz = cb0[27].xyz * r7.zzz + r7.xyw;
    r0.y = cb0[22].x * r5.x;
    r0.y = 3.14159274 * r0.y;
    sincos(r0.y, r5.x, r8.x);
    r0.y = dot(r7.xyz, r7.xyz);
    r0.y = rsqrt(r0.y);
    r7.xyz = r7.xyz * r0.yyy;
    r7.xyz = r7.xyz * r5.xxx;
    r8.yzw = -r5.yzw + r3.xyz;
    r9.xyz = r8.wyz * -r7.yzx;
    r9.xyz = r8.zwy * -r7.zxy + -r9.xyz;
    r0.y = dot(r8.yzw, -r7.xyz);
    r9.w = -r0.y;
    r10.xyz = r8.xxx * r8.yzw;
    r10.w = 0;
    r9.xyzw = r10.xyzw + r9.xyzw;
    r8.yzw = r9.yzx * r7.zxy;
    r8.yzw = r7.yzx * r9.zxy + -r8.yzw;
    r8.xyz = r8.xxx * r9.xyz + r8.yzw;
    r7.xyz = r9.www * r7.xyz + r8.xyz;
    r5.xyz = r7.xyz + r5.yzw;
    r5.xyz = r5.xyz + -r3.xyz;
    r0.y = max(cb0[22].x, 9.99999997e-007);
    r0.y = 1 / r0.y;
    r5.xyz = r5.xyz * r0.yyy;
    r1.xyz = r5.xyz * cb0[22].xxx + r1.xyz;
    r5.xyz = cb0[138].xyz * cb0[5].yyy;
    r1.xyz = r5.xyz * cb0[137].xxx + r1.xyz;
    r0.y = saturate(cb0[139].x * 7);
    r0.y = 1 + -r0.y;
    r6.xyz = r1.xyz * r0.yyy;
    r3.xyz = r6.xyz * cb0[132].xxx + r3.xyz;
    r0.y = cb0[139].x * r3.w;
    r4.x = r0.y * 6.28318548 + r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r4.xyzw
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}