// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:16 2023
Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[41];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { -1.000000, 0, 0, 0},
                              { 0, -1.000000, 0, 0},
                              { 0, 0, -1.000000, 0} };
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (uint,uint,uint,uint) u0
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (uint,uint,uint,uint) u1
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture3d (uint,uint,uint,uint) u2
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xyz = (uint3)cb0[40].xyz;
  r0.yzw = (int3)r0.xyz + (int3)vThreadID.xyz;
  r1.xyz = (uint3)cb3[5].xyz;
  r1.xyz = cmp((uint3)r0.yzw < (uint3)r1.xyz);
  r1.x = r1.y ? r1.x : 0;
  r1.x = r1.z ? r1.x : 0;
  if (r1.x != 0) {
    if (r0.w == 0) {
      r1.xy = (int2)r0.yz;
      r1.xy = r1.xy / cb3[4].xy;
      r1.xy = cb12[12].xy * r1.xy;
      r1.xy = float2(0.03125,0.03125) * r1.xy;
      r1.xyzw = t2.SampleLevel(s2_s, r1.xy, 0).xyzw;
      r2.x = floor(abs(r1.w));
      r2.y = 0.00999999978 * r2.x;
      r2.x = cmp(0 >= r2.x);
      r2.x = r2.x ? 0.00999999978 : r2.y;
      r2.y = -1;
    } else {
      r2.z = (uint)cb3[9].x;
      r3.xy = float2(0,0);
      r3.z = -(int)r2.z;
      r3.xyz = (int3)r0.yzw + (int3)r3.xyz;
      r3.xyz = (uint3)r3.xyz;
      r3.xyz = float3(-0.5,-0.5,-0.5) + r3.xyz;
      r3.xyz = r3.xyz / cb3[2].xyz;
      r2.z = floor(r3.z);
      r3.w = frac(r3.z);
      r3.xyz = r3.xyw * float3(2,2,2) + float3(-1,-1,-1);
      r3.xyz = cb3[3].xyz * r3.xyz;
      r2.z = exp2(r2.z);
      r4.xyz = cb3[6].xyz * r2.zzz;
      r2.z = cb3[7].x * r2.z;
      r5.xyz = cb3[0].xyz / r4.xyz;
      r5.xyz = floor(r5.xyz);
      r5.xyz = r5.xyz * r4.xyz;
      r1.xyz = r3.xyz * r4.xyz + r5.xyz;
      r2.x = 0.5 * r2.z;
      r3.xyz = -cb12[6].xyz * r2.xxx;
      r3.xyz = -r3.xyz * float3(5.19630003,5.19630003,5.19630003) + cb12[7].xyz;
      r3.xyz = -r3.xyz + r1.xyz;
      r2.z = dot(r3.xyz, -cb12[6].xyz);
      r2.y = cmp(0 < r2.z);
      r1.w = r2.x;
    }
    if (r2.y != 0) {
      r1.xyz = -cb12[7].xyz + r1.xyz;
      r2.yzw = cb0[7].xyz + -r1.xyz;
      r2.y = dot(r2.yzw, r2.yzw);
      r2.y = sqrt(r2.y);
      r2.z = r2.y + r2.x;
      r2.w = saturate(cb0[29].y / r2.x);
      r3.x = r2.y + -r2.z;
      r2.z = r2.w * r3.x + r2.z;
      r2.y = r0.w ? r2.y : r2.z;
      r2.y = saturate(r2.y * cb0[28].x + cb0[28].y);
      r2.y = r2.y * r2.y;
      r1.w = cmp(r1.w < 0);
      r1.w = r1.w ? 0 : r2.y;
      r2.yzw = cb0[11].xyz * cb0[12].xxx + -cb0[13].xyz;
      r3.xyz = cb0[11].xyz * cb0[26].xxx + -cb0[27].xyz;
      r4.xyz = r1.xyz;
      r3.w = r1.w;
      r4.w = 0;
      while (true) {
        r5.x = cmp((int)r4.w >= 6);
        if (r5.x != 0) break;
        r5.xyz = icb[r4.w+0].xyz * r2.xxx;
        r5.xyz = r0.www ? r5.xyz : float3(0,0,0);
        r4.xyz = r5.xyz + r4.xyz;
        r5.xyz = cb0[23].xyz * r4.yyy;
        r5.xyz = cb0[22].xyz * r4.xxx + r5.xyz;
        r5.xyz = cb0[24].xyz * r4.zzz + r5.xyz;
        r5.xyz = cb0[25].xyz + r5.xyz;
        r5.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
        r6.xyz = r5.xyz * cb0[16].xyz + cb0[17].xyz;
        r6.xyz = t1.SampleLevel(s1_s, r6.xyz, 0).xyz;
        r6.xyz = -cb0[18].xyz + r6.xyz;
        r5.xyz = r6.xyz * cb0[15].xxx + r5.xyz;
        r5.xyz = r5.xyz * cb0[19].xyz + cb0[20].xyz;
        r5.x = t0.SampleLevel(s1_s, r5.xyz, 0).x;
        r5.x = 1 + -r5.x;
        r5.x = saturate(r5.x * cb0[21].x + cb0[21].y);
        r5.xyz = cb0[14].xyz + r5.xxx;
        r6.xyz = r5.xyz * r3.www;
        r6.xyz = cmp(float3(9.99999975e-005,9.99999975e-005,9.99999975e-005) < r6.xyz);
        r5.w = (int)r6.y | (int)r6.x;
        r5.w = (int)r6.z | (int)r5.w;
        if (r5.w != 0) {
          r6.xyz = cb0[7].xyz + -r4.xyz;
          r5.w = dot(r6.xyz, r6.xyz);
          r5.w = sqrt(r5.w);
          r6.xyz = r6.xyz / r5.www;
          r5.w = saturate(cb0[10].y * r3.w + cb0[10].x);
          r7.xyz = r5.www * r2.yzw + cb0[13].xyz;
          r8.xyz = r5.www * r3.xyz + cb0[27].xyz;
          r5.w = dot(r4.xyz, r4.xyz);
          r5.w = rsqrt(r5.w);
          r9.xyz = r5.www * r4.xyz;
          r6.w = saturate(dot(icb[r4.w+0].xyz, r6.xyz));
          r10.xyz = -r4.xyz * r5.www + r6.xyz;
          r5.w = dot(r10.xyz, r10.xyz);
          r5.w = rsqrt(r5.w);
          r10.xyz = r10.xyz * r5.www;
          r5.w = dot(icb[r4.w+0].xyz, -r9.xyz);
          r5.w = 9.99999975e-006 + abs(r5.w);
          r6.x = saturate(dot(r6.xyz, r10.xyz));
          r6.x = dot(r6.xx, r6.xx);
          r6.y = 1 + -r6.w;
          r6.x = -0.5 + r6.x;
          r6.z = r6.y * r6.y;
          r6.z = r6.z * r6.z;
          r6.y = r6.y * r6.z;
          r6.y = r6.x * r6.y + 1;
          r5.w = 1 + -r5.w;
          r6.z = r5.w * r5.w;
          r6.z = r6.z * r6.z;
          r5.w = r6.z * r5.w;
          r5.w = r6.x * r5.w + 1;
          r5.w = r6.y * r5.w;
          r5.w = r5.w * r6.w;
          r5.w = 0.318309873 * r5.w;
          r6.xyz = r5.www * r8.xyz + r7.xyz;
          r5.w = cb0[31].x * r3.w;
          r6.xyz = r6.xyz * r5.www;
          r5.xyz = r6.xyz * r5.xyz;
          r5.xyz = cb0[32].xxx * r5.xyz;
          r5.xyz = r5.xyz / cb13[1].xxx;
          r5.w = dot(r5.xyz, r5.xyz);
          r5.w = cmp(9.99999975e-005 < r5.w);
          if (r5.w != 0) {
            r0.x = mad((int)r0.y, 6, (int)r4.w);
            r5.xyz = float3(8388608,8388608,8388608) * r5.xyz;
            r5.xyz = (uint3)r5.xyz;
            // Needs manual fix for instruction:
                    atomic_iadd u0, r0.xzwx, r5.x
            InterlockedAdd(dest, value, orig_value);
            // Needs manual fix for instruction:
                    atomic_iadd u1, r0.xzwx, r5.y
            InterlockedAdd(dest, value, orig_value);
            // Needs manual fix for instruction:
                    atomic_iadd u2, r0.xzwx, r5.z
            InterlockedAdd(dest, value, orig_value);
          }
        }
        r4.w = (int)r4.w + 1;
      }
    }
  }
  return;
}