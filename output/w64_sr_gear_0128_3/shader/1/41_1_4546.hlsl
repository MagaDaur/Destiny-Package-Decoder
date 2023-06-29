// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:44 2023
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

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[13];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = min(asuint(cb1[4].w), (uint)v4.x);
  r0.xyzw = t0.Load(r0.x).xyzw;
  r1.xyzw = v0.xxyz * cb1[5].wwww + cb1[5].xxyz;
  r2.x = cb0[1].x + r1.x;
  r2.x = cb0[2].w * r2.x + cb0[2].z;
  r2.y = round(r2.x);
  r2.x = r2.x + -r2.y;
  r2.y = abs(r2.x) * -16 + 8;
  r2.x = r2.x * r2.y;
  r2.y = abs(r2.x) * 0.224999994 + 0.774999976;
  r2.x = r2.x * r2.y;
  r2.x = cb0[2].x * r2.x + cb0[2].y;
  r2.x = cb0[0].x * r2.x;
  r2.z = r2.x * r0.x;
  r3.xy = float2(1,1) + -r0.xy;
  r1.x = cb13[0].x + r1.x;
  r2.w = cb0[7].x * r1.x + cb0[6].x;
  r3.z = 0.159154937 * r2.w;
  r3.z = round(r3.z);
  r2.w = r2.w * 0.159154937 + -r3.z;
  r3.z = abs(r2.w) * -16 + 8;
  r2.w = r3.z * r2.w;
  r3.z = abs(r2.w) * 0.224999994 + 0.774999976;
  r2.w = r3.z * r2.w;
  r4.y = cb0[4].x * r2.w + cb0[5].x;
  r4.xz = float2(0,0);
  r3.xzw = r3.xxx * -r4.zyz + r4.xyz;
  r1.x = cb0[11].x * r1.x + cb0[10].x;
  r2.w = 0.159154937 * r1.x;
  r2.w = round(r2.w);
  r1.x = r1.x * 0.159154937 + -r2.w;
  r2.w = abs(r1.x) * -16 + 8;
  r1.x = r2.w * r1.x;
  r2.w = abs(r1.x) * 0.224999994 + 0.774999976;
  r1.x = r2.w * r1.x;
  r4.y = cb0[8].x * r1.x + cb0[9].x;
  r4.xz = float2(0,0);
  r4.xyz = r3.yyy * -r4.zyz + r4.xyz;
  r3.xyz = r4.xyz + r3.xzw;
  r2.xy = float2(0,0);
  r2.xyz = r3.xyz + r2.xyz;
  r2.xyz = cb0[12].xxx * -r2.xyz + r2.xyz;
  r1.x = 32767.0996 * v0.w;
  r1.x = (int)r1.x;
  r2.w = max((int)r1.x, (int)-r1.x);
  r3.x = cmp((int)r2.w >= 2048);
  r3.y = cmp((int)r1.x < 0);
  r3.z = (uint)v4.x << 1;
  r3.z = r3.y ? r3.z : v4.x;
  r2.w = (uint)r2.w << 3;
  r2.w = (int)r2.w + 0xffffc000;
  bitmask.w = ((~(-1 << 3)) << 0) & 0xffffffff;  r2.w = (((uint)r3.z << 0) & bitmask.w) | ((uint)r2.w & ~bitmask.w);
  r4.xyzw = t1.Load(r2.w).xyzw;
  r1.x = r3.x ? r4.x : r1.x;
  r3.z = (int)r1.x * 3;
  r5.xy = mad(int2(3,3), (int2)r1.xx, int2(1,2));
  if (r3.x != 0) {
    r3.xw = (uint2)r4.zw;
    r3.xw = float2(0.00392156886,0.00392156886) * r3.xw;
    r6.x = cb1[r3.z+8].w;
    r6.y = cb1[r5.x+8].w;
    r6.z = cb1[r5.y+8].w;
    r1.x = (int)r4.y * 3;
    r4.xy = mad(int2(3,3), (int2)r4.yy, int2(1,2));
    r7.xyz = cb1[r1.x+8].xyz * r3.www;
    r8.x = cb1[r1.x+8].w * r3.w;
    r8.y = cb1[r4.x+8].w * r3.w;
    r8.z = cb1[r4.y+8].w * r3.w;
    r4.xzw = cb1[r4.x+8].xyz * r3.www;
    r9.xyz = cb1[r4.y+8].xyz * r3.www;
    r7.xyz = cb1[r3.z+8].xyz * r3.xxx + r7.xyz;
    r6.xyz = r6.xyz * r3.xxx + r8.xyz;
    r4.xyz = cb1[r5.x+8].xyz * r3.xxx + r4.xzw;
    r8.xyz = cb1[r5.y+8].xyz * r3.xxx + r9.xyz;
    if (r3.y != 0) {
      r1.x = (int)r2.w + 1;
      r9.xyzw = t1.Load(r1.x).xyzw;
      r3.xy = (uint2)r9.zw;
      r3.xy = float2(0.00392156886,0.00392156886) * r3.xy;
      r5.zw = (int2)r9.xy * int2(3,3);
      r9.xyzw = mad(int4(3,3,3,3), (int4)r9.xxyy, int4(1,2,1,2));
      r10.x = cb1[r5.z+8].w * r3.x;
      r10.y = cb1[r9.x+8].w * r3.x;
      r10.z = cb1[r9.y+8].w * r3.x;
      r11.xyz = r3.xxx * cb1[r5.z+8].xyz + r7.xyz;
      r10.xyz = r10.xyz + r6.xyz;
      r12.xyz = r3.xxx * cb1[r9.x+8].xyz + r4.xyz;
      r13.xyz = r3.xxx * cb1[r9.y+8].xyz + r8.xyz;
      r14.x = cb1[r5.w+8].w * r3.y;
      r14.y = cb1[r9.z+8].w * r3.y;
      r14.z = cb1[r9.w+8].w * r3.y;
      r7.xyz = r3.yyy * cb1[r5.w+8].xyz + r11.xyz;
      r6.xyz = r14.xyz + r10.xyz;
      r4.xyz = r3.yyy * cb1[r9.z+8].xyz + r12.xyz;
      r8.xyz = r3.yyy * cb1[r9.w+8].xyz + r13.xyz;
    }
  } else {
    r7.xyz = cb1[r3.z+8].xyz;
    r6.x = cb1[r3.z+8].w;
    r6.y = cb1[r5.x+8].w;
    r6.z = cb1[r5.y+8].w;
    r4.xyz = cb1[r5.x+8].xyz;
    r8.xyz = cb1[r5.y+8].xyz;
  }
  r1.xyz = r2.xyz + r1.yzw;
  r2.xyz = cb12[15].xyz + r6.xyz;
  r7.w = r2.x;
  r1.w = 1;
  r3.x = dot(r7.xyzw, r1.xyzw);
  r4.w = r2.y;
  r3.y = dot(r4.xyzw, r1.xyzw);
  r8.w = r2.z;
  r3.z = dot(r8.xyzw, r1.xyzw);
  r2.xyzw = cb12[1].xyzw * r3.yyyy;
  r2.xyzw = cb12[0].xyzw * r3.xxxx + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r3.zzzz + r2.xyzw;
  o6.xyzw = cb12[14].xyzw + r2.xyzw;
  o4.xyz = cb12[7].xyz + r3.xyz;
  r1.x = dot(v1.xyz, v1.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyw = v1.xyz * r1.xxx;
  r2.x = dot(r7.xyz, r1.xyw);
  r2.y = dot(r4.xyz, r1.xyw);
  r2.z = dot(r8.xyz, r1.xyw);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyw = v2.xyz * r1.xxx;
  r3.x = dot(r7.xyz, r1.xyw);
  r3.y = dot(r4.xyz, r1.xyw);
  r3.z = dot(r8.xyz, r1.xyw);
  r1.xyw = r3.yzx * r2.zxy;
  r1.xyw = r2.yzx * r3.zxy + -r1.xyw;
  o2.xyz = v2.www * r1.xyw;
  r1.xy = v3.xy * cb1[6].xy + cb1[6].zw;
  r1.w = saturate(cb1[7].z * r2.z);
  o0.w = saturate(cb1[7].w + r1.w);
  r1.w = 32767.0996 * v1.w;
  r1.w = (int)r1.w;
  r2.w = (uint)r1.w >> 3;
  r2.w = (int)r2.w & 4095;
  r1.w = (int)r1.w & 7;
  r1.w = (int)r1.w;
  o2.w = 0.100000001 + r1.w;
  r4.xyzw = t1.Load(r2.w).xyzw;
  r4.yw = (uint2)r4.yw << int2(8,8);
  r4.xy = (int2)r4.yw | (int2)r4.xz;
  r4.xy = f16tof32(r4.xy);
  o3.zw = r4.xy * r1.xy;
  o0.xyz = r2.xyz;
  o1.w = r1.z;
  o1.xyz = r3.xyz;
  o3.xy = r1.xy;
  o5.xyzw = r0.xyzw;
  return;
}