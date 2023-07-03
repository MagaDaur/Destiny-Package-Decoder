// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:43 2023
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
  float4 cb0[10];
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

  r0.x = cmp(cb0[9].x < 9.99999997e-007);
  if (r0.x != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,0);
    o3.xyzw = float4(0,0,0,0);
    o5.xyzw = float4(0,0,0,0);
    o6.xyzw = float4(0,0,0,0);
    o2.xyz = float3(0,0,0);
    o4.xyz = float3(10000,10000,-10000);
  } else {
    r0.x = min(asuint(cb1[4].w), (uint)v4.x);
    r0.xyzw = t0.Load(r0.x).xyzw;
    r1.xyz = cb0[0].yxz + r0.yxz;
    r1.w = cb0[2].y * cb0[1].y;
    r2.x = r1.x * r1.w;
    r2.y = cb0[3].x * r1.y;
    r2.z = cb0[4].z * r1.z;
    r1.x = 32767.0996 * v0.w;
    r1.x = (int)r1.x;
    r1.y = max((int)r1.x, (int)-r1.x);
    r1.z = cmp((int)r1.y >= 2048);
    r1.w = cmp((int)r1.x < 0);
    r2.w = (uint)v4.x << 1;
    r2.w = r1.w ? r2.w : v4.x;
    r1.y = (uint)r1.y << 3;
    r1.y = (int)r1.y + 0xffffc000;
    bitmask.y = ((~(-1 << 3)) << 0) & 0xffffffff;  r1.y = (((uint)r2.w << 0) & bitmask.y) | ((uint)r1.y & ~bitmask.y);
    r3.xyzw = t1.Load(r1.y).xyzw;
    r1.x = r1.z ? r3.x : r1.x;
    r2.w = (int)r1.x * 3;
    r4.xy = mad(int2(3,3), (int2)r1.xx, int2(1,2));
    if (r1.z != 0) {
      r1.xz = (uint2)r3.zw;
      r1.xz = float2(0.00392156886,0.00392156886) * r1.xz;
      r5.x = cb1[r2.w+8].w;
      r5.y = cb1[r4.x+8].w;
      r5.z = cb1[r4.y+8].w;
      r3.x = (int)r3.y * 3;
      r3.yz = mad(int2(3,3), (int2)r3.yy, int2(1,2));
      r6.xyz = cb1[r3.x+8].xyz * r1.zzz;
      r7.x = cb1[r3.x+8].w * r1.z;
      r7.y = cb1[r3.y+8].w * r1.z;
      r7.z = cb1[r3.z+8].w * r1.z;
      r3.xyw = cb1[r3.y+8].xyz * r1.zzz;
      r8.xyz = cb1[r3.z+8].xyz * r1.zzz;
      r6.xyz = cb1[r2.w+8].xyz * r1.xxx + r6.xyz;
      r5.xyz = r5.xyz * r1.xxx + r7.xyz;
      r3.xyz = cb1[r4.x+8].xyz * r1.xxx + r3.xyw;
      r7.xyz = cb1[r4.y+8].xyz * r1.xxx + r8.xyz;
      if (r1.w != 0) {
        r1.x = (int)r1.y + 1;
        r1.xyzw = t1.Load(r1.x).xyzw;
        r1.zw = (uint2)r1.zw;
        r1.zw = float2(0.00392156886,0.00392156886) * r1.zw;
        r4.zw = (int2)r1.xy * int2(3,3);
        r8.xyzw = mad(int4(3,3,3,3), (int4)r1.xxyy, int4(1,2,1,2));
        r9.x = cb1[r4.z+8].w * r1.z;
        r9.y = cb1[r8.x+8].w * r1.z;
        r9.z = cb1[r8.y+8].w * r1.z;
        r10.xyz = r1.zzz * cb1[r4.z+8].xyz + r6.xyz;
        r9.xyz = r9.xyz + r5.xyz;
        r11.xyz = r1.zzz * cb1[r8.x+8].xyz + r3.xyz;
        r1.xyz = r1.zzz * cb1[r8.y+8].xyz + r7.xyz;
        r12.x = cb1[r4.w+8].w * r1.w;
        r12.y = cb1[r8.z+8].w * r1.w;
        r12.z = cb1[r8.w+8].w * r1.w;
        r6.xyz = r1.www * cb1[r4.w+8].xyz + r10.xyz;
        r5.xyz = r12.xyz + r9.xyz;
        r3.xyz = r1.www * cb1[r8.z+8].xyz + r11.xyz;
        r7.xyz = r1.www * cb1[r8.w+8].xyz + r1.xyz;
      }
    } else {
      r6.xyz = cb1[r2.w+8].xyz;
      r5.x = cb1[r2.w+8].w;
      r5.y = cb1[r4.x+8].w;
      r5.z = cb1[r4.y+8].w;
      r3.xyz = cb1[r4.x+8].xyz;
      r7.xyz = cb1[r4.y+8].xyz;
    }
    r1.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
    r1.xyz = r1.xyz + r2.xyz;
    r2.xyz = cb12[15].xyz + r5.xyz;
    r6.w = r2.x;
    r1.w = 1;
    r4.x = dot(r6.xyzw, r1.xyzw);
    r3.w = r2.y;
    r4.y = dot(r3.xyzw, r1.xyzw);
    r7.w = r2.z;
    r4.z = dot(r7.xyzw, r1.xyzw);
    r1.xyzw = cb12[1].xyzw * r4.yyyy;
    r1.xyzw = cb12[0].xyzw * r4.xxxx + r1.xyzw;
    r1.xyzw = cb12[2].xyzw * r4.zzzz + r1.xyzw;
    o6.xyzw = cb12[14].xyzw + r1.xyzw;
    r1.x = dot(v1.xyz, v1.xyz);
    r1.x = rsqrt(r1.x);
    r1.xyz = v1.xyz * r1.xxx;
    r2.x = dot(r6.xyz, r1.xyz);
    r2.y = dot(r3.xyz, r1.xyz);
    r2.z = dot(r7.xyz, r1.xyz);
    r1.x = dot(v2.xyz, v2.xyz);
    r1.x = rsqrt(r1.x);
    r1.xyz = v2.xyz * r1.xxx;
    r5.z = dot(r6.xyz, r1.xyz);
    r5.x = dot(r3.xyz, r1.xyz);
    r5.y = dot(r7.xyz, r1.xyz);
    r1.xyz = r5.xyz * r2.zxy;
    r1.xyz = r2.yzx * r5.yzx + -r1.xyz;
    o2.xyz = v2.www * r1.xyz;
    o3.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
    r1.x = saturate(cb1[7].z * r2.z);
    o0.w = saturate(cb1[7].w + r1.x);
    r1.xyz = cb12[7].xyz + r4.xyz;
    r3.xyz = cb12[10].xyz + -cb12[7].xyz;
    o4.xyz = r3.xyz + r1.xyz;
    o0.xyz = r2.xyz;
    o1.xyzw = r5.zxyy;
    o5.xyzw = r0.xyzw;
  }
  return;
}