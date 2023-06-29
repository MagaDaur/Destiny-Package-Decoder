// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:54 2023
Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[24];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[16];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float2 v3 : TEXCOORD0,
  uint v4 : SV_VERTEXID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD8,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.xyzw = t0.Load(r0.x).xyzw;
  r1.x = 32767.0996 * v0.w;
  r1.x = (int)r1.x;
  r1.y = max((int)r1.x, (int)-r1.x);
  r1.z = cmp((int)r1.y >= 2048);
  r1.w = cmp((int)r1.x < 0);
  r2.x = (uint)v4.x << 1;
  r2.x = r1.w ? r2.x : v4.x;
  r1.y = (uint)r1.y << 3;
  r1.y = (int)r1.y + 0xffffc000;
  bitmask.y = ((~(-1 << 3)) << 0) & 0xffffffff;  r1.y = (((uint)r2.x << 0) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
  r2.xyzw = t1.Load(r1.y).xyzw;
  r1.x = r1.z ? r2.x : r1.x;
  r2.x = (int)r1.x * 3;
  r3.xy = mad(int2(3,3), (int2)r1.xx, int2(1,2));
  if (r1.z != 0) {
    r1.xz = (uint2)r2.zw;
    r1.xz = float2(0.00392156886,0.00392156886) * r1.xz;
    r4.x = cb1[r2.x+8].w;
    r4.y = cb1[r3.x+8].w;
    r4.z = cb1[r3.y+8].w;
    r2.z = (int)r2.y * 3;
    r2.yw = mad(int2(3,3), (int2)r2.yy, int2(1,2));
    r5.xyz = cb1[r2.z+8].xyz * r1.zzz;
    r6.x = cb1[r2.z+8].w * r1.z;
    r6.y = cb1[r2.y+8].w * r1.z;
    r6.z = cb1[r2.w+8].w * r1.z;
    r7.xyz = cb1[r2.y+8].xyz * r1.zzz;
    r2.yzw = cb1[r2.w+8].xyz * r1.zzz;
    r5.xyz = cb1[r2.x+8].xyz * r1.xxx + r5.xyz;
    r4.xyz = r4.xyz * r1.xxx + r6.xyz;
    r6.xyz = cb1[r3.x+8].xyz * r1.xxx + r7.xyz;
    r7.xyz = cb1[r3.y+8].xyz * r1.xxx + r2.yzw;
    if (r1.w != 0) {
      r1.x = (int)r1.y + 1;
      r1.xyzw = t1.Load(r1.x).xyzw;
      r1.zw = (uint2)r1.zw;
      r1.zw = float2(0.00392156886,0.00392156886) * r1.zw;
      r2.yz = (int2)r1.xy * int2(3,3);
      r8.xyzw = mad(int4(3,3,3,3), (int4)r1.xxyy, int4(1,2,1,2));
      r9.x = cb1[r2.y+8].w * r1.z;
      r9.y = cb1[r8.x+8].w * r1.z;
      r9.z = cb1[r8.y+8].w * r1.z;
      r10.xyz = r1.zzz * cb1[r2.y+8].xyz + r5.xyz;
      r9.xyz = r9.xyz + r4.xyz;
      r11.xyz = r1.zzz * cb1[r8.x+8].xyz + r6.xyz;
      r1.xyz = r1.zzz * cb1[r8.y+8].xyz + r7.xyz;
      r12.x = cb1[r2.z+8].w * r1.w;
      r12.y = cb1[r8.z+8].w * r1.w;
      r12.z = cb1[r8.w+8].w * r1.w;
      r5.xyz = r1.www * cb1[r2.z+8].xyz + r10.xyz;
      r4.xyz = r12.xyz + r9.xyz;
      r6.xyz = r1.www * cb1[r8.z+8].xyz + r11.xyz;
      r7.xyz = r1.www * cb1[r8.w+8].xyz + r1.xyz;
    }
  } else {
    r5.xyz = cb1[r2.x+8].xyz;
    r4.x = cb1[r2.x+8].w;
    r4.y = cb1[r3.x+8].w;
    r4.z = cb1[r3.y+8].w;
    r6.xyz = cb1[r3.x+8].xyz;
    r7.xyz = cb1[r3.y+8].xyz;
  }
  r1.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
  r1.xyz = cb0[0].xyz * r0.yyy + r1.xyz;
  r2.xyz = cb12[15].xyz + r4.xyz;
  r5.w = r2.x;
  r1.w = 1;
  r3.x = dot(r5.xyzw, r1.xyzw);
  r6.w = r2.y;
  r3.y = dot(r6.xyzw, r1.xyzw);
  r7.w = r2.z;
  r3.z = dot(r7.xyzw, r1.xyzw);
  r2.xyzw = cb12[1].xyzw * r3.yyyy;
  r2.xyzw = cb12[0].xyzw * r3.xxxx + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r3.zzzz + r2.xyzw;
  o6.xyzw = cb12[14].xyzw + r2.xyzw;
  r1.xyw = cb12[7].xyz + r3.xyz;
  r2.x = dot(v1.xyz, v1.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v1.xyz * r2.xxx;
  r3.x = dot(r5.xyz, r2.xyz);
  r3.y = dot(r6.xyz, r2.xyz);
  r3.z = dot(r7.xyz, r2.xyz);
  r2.x = dot(v2.xyz, v2.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v2.xyz * r2.xxx;
  r4.x = dot(r5.xyz, r2.xyz);
  r4.y = dot(r6.xyz, r2.xyz);
  r4.z = dot(r7.xyz, r2.xyz);
  r2.xyz = r4.yzx * r3.zxy;
  r2.xyz = r3.yzx * r4.zxy + -r2.xyz;
  o2.xyz = v2.www * r2.xyz;
  r2.xy = v3.xy * cb1[6].xy + cb1[6].zw;
  r2.z = saturate(cb1[7].z * r3.z);
  o0.w = saturate(cb1[7].w + r2.z);
  r2.z = 32767.0996 * v1.w;
  r2.z = (int)r2.z;
  r2.w = (uint)r2.z >> 3;
  r2.zw = (int2)r2.zw & int2(7,4095);
  r2.z = (int)r2.z;
  o2.w = 0.100000001 + r2.z;
  r5.xyzw = t1.Load(r2.w).xyzw;
  r2.zw = (uint2)r5.yw << int2(8,8);
  r2.zw = (int2)r2.zw | (int2)r5.xz;
  r2.zw = f16tof32(r2.zw);
  o3.zw = r2.xy * r2.zw;
  r5.xyz = cb12[10].xyz + -cb12[7].xyz;
  o4.xyz = r5.xyz + r1.xyw;
  o0.xyz = r3.xyz;
  o1.w = r1.z;
  o1.xyz = r4.xyz;
  o3.xy = r2.xy;
  o5.xyzw = r0.xyzw;
  return;
}