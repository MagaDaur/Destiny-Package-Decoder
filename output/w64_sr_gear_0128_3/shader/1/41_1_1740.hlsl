// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:52 2023
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
  float4 cb0[4];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.xyzw = t0.Load(r0.x).xyzw;
  r1.x = max(0, r0.x);
  r1.x = log2(r1.x);
  r1.x = cb0[1].x * r1.x;
  r1.x = exp2(r1.x);
  r1.x = cb0[0].x * r1.x;
  r1.yz = cb0[2].xx;
  r1.xyz = max(-cb0[3].xyz, r1.xyz);
  r1.xyz = min(cb0[3].xyz, r1.xyz);
  r1.w = 32767.0996 * v0.w;
  r1.w = (int)r1.w;
  r2.x = max((int)r1.w, (int)-r1.w);
  r2.y = cmp((int)r2.x >= 2048);
  r2.z = cmp((int)r1.w < 0);
  r2.w = (uint)v4.x << 1;
  r2.w = r2.z ? r2.w : v4.x;
  r2.x = (uint)r2.x << 3;
  r2.x = (int)r2.x + 0xffffc000;
  bitmask.x = ((~(-1 << 3)) << 0) & 0xffffffff;  r2.x = (((uint)r2.w << 0) & bitmask.x) | ((uint)r2.x & ~bitmask.x);
  r3.xyzw = t1.Load(r2.x).xyzw;
  r1.w = r2.y ? r3.x : r1.w;
  r2.w = (int)r1.w * 3;
  r4.xy = mad(int2(3,3), (int2)r1.ww, int2(1,2));
  if (r2.y != 0) {
    r3.xz = (uint2)r3.zw;
    r3.xz = float2(0.00392156886,0.00392156886) * r3.xz;
    r5.x = cb1[r2.w+8].w;
    r5.y = cb1[r4.x+8].w;
    r5.z = cb1[r4.y+8].w;
    r1.w = (int)r3.y * 3;
    r3.yw = mad(int2(3,3), (int2)r3.yy, int2(1,2));
    r6.xyz = cb1[r1.w+8].xyz * r3.zzz;
    r7.x = cb1[r1.w+8].w * r3.z;
    r7.y = cb1[r3.y+8].w * r3.z;
    r7.z = cb1[r3.w+8].w * r3.z;
    r8.xyz = cb1[r3.y+8].xyz * r3.zzz;
    r3.yzw = cb1[r3.w+8].xyz * r3.zzz;
    r6.xyz = cb1[r2.w+8].xyz * r3.xxx + r6.xyz;
    r5.xyz = r5.xyz * r3.xxx + r7.xyz;
    r7.xyz = cb1[r4.x+8].xyz * r3.xxx + r8.xyz;
    r3.xyz = cb1[r4.y+8].xyz * r3.xxx + r3.yzw;
    if (r2.z != 0) {
      r1.w = (int)r2.x + 1;
      r8.xyzw = t1.Load(r1.w).xyzw;
      r2.xy = (uint2)r8.zw;
      r2.xy = float2(0.00392156886,0.00392156886) * r2.xy;
      r4.zw = (int2)r8.xy * int2(3,3);
      r8.xyzw = mad(int4(3,3,3,3), (int4)r8.xxyy, int4(1,2,1,2));
      r9.x = cb1[r4.z+8].w * r2.x;
      r9.y = cb1[r8.x+8].w * r2.x;
      r9.z = cb1[r8.y+8].w * r2.x;
      r10.xyz = r2.xxx * cb1[r4.z+8].xyz + r6.xyz;
      r9.xyz = r9.xyz + r5.xyz;
      r11.xyz = r2.xxx * cb1[r8.x+8].xyz + r7.xyz;
      r12.xyz = r2.xxx * cb1[r8.y+8].xyz + r3.xyz;
      r13.x = cb1[r4.w+8].w * r2.y;
      r13.y = cb1[r8.z+8].w * r2.y;
      r13.z = cb1[r8.w+8].w * r2.y;
      r6.xyz = r2.yyy * cb1[r4.w+8].xyz + r10.xyz;
      r5.xyz = r13.xyz + r9.xyz;
      r7.xyz = r2.yyy * cb1[r8.z+8].xyz + r11.xyz;
      r3.xyz = r2.yyy * cb1[r8.w+8].xyz + r12.xyz;
    }
  } else {
    r6.xyz = cb1[r2.w+8].xyz;
    r5.x = cb1[r2.w+8].w;
    r5.y = cb1[r4.x+8].w;
    r5.z = cb1[r4.y+8].w;
    r7.xyz = cb1[r4.x+8].xyz;
    r3.xyz = cb1[r4.y+8].xyz;
  }
  r2.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = cb12[15].xyz + r5.xyz;
  r6.w = r2.x;
  r1.w = 1;
  r4.x = dot(r6.xyzw, r1.xyzw);
  r7.w = r2.y;
  r4.y = dot(r7.xyzw, r1.xyzw);
  r3.w = r2.z;
  r4.z = dot(r3.xyzw, r1.xyzw);
  r1.xyzw = cb12[1].xyzw * r4.yyyy;
  r1.xyzw = cb12[0].xyzw * r4.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r4.zzzz + r1.xyzw;
  o6.xyzw = cb12[14].xyzw + r1.xyzw;
  r1.x = dot(v1.xyz, v1.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v1.xyz * r1.xxx;
  r2.x = dot(r6.xyz, r1.xyz);
  r2.y = dot(r7.xyz, r1.xyz);
  r2.z = dot(r3.xyz, r1.xyz);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v2.xyz * r1.xxx;
  r5.z = dot(r6.xyz, r1.xyz);
  r5.x = dot(r7.xyz, r1.xyz);
  r5.y = dot(r3.xyz, r1.xyz);
  r1.xyz = r5.xyz * r2.zxy;
  r1.xyz = r2.yzx * r5.yzx + -r1.xyz;
  o2.xyz = v2.www * r1.xyz;
  o3.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
  r1.x = saturate(cb1[7].z * r2.z);
  o0.w = saturate(cb1[7].w + r1.x);
  o4.xyz = cb12[7].xyz + r4.xyz;
  o0.xyz = r2.xyz;
  o1.xyzw = r5.zxyy;
  o5.xyzw = r0.xyzw;
  return;
}