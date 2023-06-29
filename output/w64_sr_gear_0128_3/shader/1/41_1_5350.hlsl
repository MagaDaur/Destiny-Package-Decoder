// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:42 2023
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 cb0[14];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 32767.0996 * v0.w;
  r0.x = (int)r0.x;
  r0.y = max((int)r0.x, (int)-r0.x);
  r0.z = cmp((int)r0.y >= 2048);
  r0.w = cmp((int)r0.x < 0);
  r1.x = (uint)v4.x << 1;
  r1.x = r0.w ? r1.x : v4.x;
  r0.y = (uint)r0.y << 3;
  r0.y = (int)r0.y + 0xffffc000;
  bitmask.y = ((~(-1 << 3)) << 0) & 0xffffffff;  r0.y = (((uint)r1.x << 0) & bitmask.y) | ((uint)r0.y & ~bitmask.y);
  r1.xyzw = t1.Load(r0.y).xyzw;
  r0.x = r0.z ? r1.x : r0.x;
  r1.x = (int)r0.x * 3;
  r2.xy = mad(int2(3,3), (int2)r0.xx, int2(1,2));
  if (r0.z != 0) {
    r0.xz = (uint2)r1.zw;
    r0.xz = float2(0.00392156886,0.00392156886) * r0.xz;
    r3.x = cb1[r1.x+8].w;
    r3.y = cb1[r2.x+8].w;
    r3.z = cb1[r2.y+8].w;
    r1.z = (int)r1.y * 3;
    r1.yw = mad(int2(3,3), (int2)r1.yy, int2(1,2));
    r4.xyz = cb1[r1.z+8].xyz * r0.zzz;
    r5.x = cb1[r1.z+8].w * r0.z;
    r5.y = cb1[r1.y+8].w * r0.z;
    r5.z = cb1[r1.w+8].w * r0.z;
    r6.xyz = cb1[r1.y+8].xyz * r0.zzz;
    r1.yzw = cb1[r1.w+8].xyz * r0.zzz;
    r4.xyz = cb1[r1.x+8].xyz * r0.xxx + r4.xyz;
    r3.xyz = r3.xyz * r0.xxx + r5.xyz;
    r5.xyz = cb1[r2.x+8].xyz * r0.xxx + r6.xyz;
    r6.xyz = cb1[r2.y+8].xyz * r0.xxx + r1.yzw;
    if (r0.w != 0) {
      r0.x = (int)r0.y + 1;
      r0.xyzw = t1.Load(r0.x).xyzw;
      r0.zw = (uint2)r0.zw;
      r0.zw = float2(0.00392156886,0.00392156886) * r0.zw;
      r1.yz = (int2)r0.xy * int2(3,3);
      r7.xyzw = mad(int4(3,3,3,3), (int4)r0.xxyy, int4(1,2,1,2));
      r8.x = cb1[r1.y+8].w * r0.z;
      r8.y = cb1[r7.x+8].w * r0.z;
      r8.z = cb1[r7.y+8].w * r0.z;
      r9.xyz = r0.zzz * cb1[r1.y+8].xyz + r4.xyz;
      r8.xyz = r8.xyz + r3.xyz;
      r10.xyz = r0.zzz * cb1[r7.x+8].xyz + r5.xyz;
      r0.xyz = r0.zzz * cb1[r7.y+8].xyz + r6.xyz;
      r11.x = cb1[r1.z+8].w * r0.w;
      r11.y = cb1[r7.z+8].w * r0.w;
      r11.z = cb1[r7.w+8].w * r0.w;
      r4.xyz = r0.www * cb1[r1.z+8].xyz + r9.xyz;
      r3.xyz = r11.xyz + r8.xyz;
      r5.xyz = r0.www * cb1[r7.z+8].xyz + r10.xyz;
      r6.xyz = r0.www * cb1[r7.w+8].xyz + r0.xyz;
    }
  } else {
    r4.xyz = cb1[r1.x+8].xyz;
    r3.x = cb1[r1.x+8].w;
    r3.y = cb1[r2.x+8].w;
    r3.z = cb1[r2.y+8].w;
    r5.xyz = cb1[r2.x+8].xyz;
    r6.xyz = cb1[r2.y+8].xyz;
  }
  r0.xyz = v0.xyz * cb1[5].www + cb1[5].xyz;
  r1.xyz = cb12[15].xyz + r3.xyz;
  r4.w = r1.x;
  r0.w = 1;
  r2.x = dot(r4.xyzw, r0.xyzw);
  r5.w = r1.y;
  r2.y = dot(r5.xyzw, r0.xyzw);
  r6.w = r1.z;
  r2.z = dot(r6.xyzw, r0.xyzw);
  r1.xyzw = cb12[1].xyzw * r2.yyyy;
  r1.xyzw = cb12[0].xyzw * r2.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r2.zzzz + r1.xyzw;
  r1.xyzw = cb12[14].xyzw + r1.xyzw;
  r0.xyw = cb12[7].xyz + r2.xyz;
  r2.x = dot(v1.xyz, v1.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v1.xyz * r2.xxx;
  r3.x = dot(r4.xyz, r2.xyz);
  r3.y = dot(r5.xyz, r2.xyz);
  r3.z = dot(r6.xyz, r2.xyz);
  r2.x = dot(v2.xyz, v2.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v2.xyz * r2.xxx;
  r4.x = dot(r4.xyz, r2.xyz);
  r4.y = dot(r5.xyz, r2.xyz);
  r4.z = dot(r6.xyz, r2.xyz);
  r2.xyz = r4.yzx * r3.zxy;
  r2.xyz = r3.yzx * r4.zxy + -r2.xyz;
  o2.xyz = v2.www * r2.xyz;
  r2.xy = v3.xy * cb1[6].xy + cb1[6].zw;
  r2.z = saturate(cb1[7].z * r3.z);
  o0.w = saturate(cb1[7].w + r2.z);
  r2.z = min(asuint(cb1[4].w), (uint)v4.x);
  r5.xyzw = t0.Load(r2.z).xyzw;
  r2.z = 32767.0996 * v1.w;
  r2.z = (int)r2.z;
  r2.w = (uint)r2.z >> 3;
  r2.zw = (int2)r2.zw & int2(7,4095);
  r2.z = (int)r2.z;
  o2.w = 0.100000001 + r2.z;
  r6.xyzw = t1.Load(r2.w).xyzw;
  r2.zw = (uint2)r6.yw << int2(8,8);
  r2.zw = (int2)r2.zw | (int2)r6.xz;
  r2.zw = f16tof32(r2.zw);
  o3.zw = r2.xy * r2.zw;
  r2.z = cb0[1].x * cb0[0].x;
  r2.z = r5.x * r2.z;
  r2.z = cb0[2].x * r2.z;
  r6.xy = -cb0[4].xy + r2.xy;
  r2.w = dot(r6.xy, r6.xy);
  r2.w = sqrt(r2.w);
  r2.w = cb0[3].x + r2.w;
  r2.w = cb0[5].w * r2.w + cb0[5].z;
  r3.w = round(r2.w);
  r2.w = -r3.w + r2.w;
  r3.w = abs(r2.w) * -16 + 8;
  r2.w = r3.w * r2.w;
  r3.w = abs(r2.w) * 0.224999994 + 0.774999976;
  r2.w = r3.w * r2.w;
  r2.w = cb0[5].x * r2.w + cb0[5].y;
  r6.xy = r2.xy * cb0[6].xy + cb0[6].zw;
  r3.w = t2.SampleLevel(s1_s, r6.xy, 0).x;
  r6.xy = r2.xy * cb0[7].xy + cb0[7].zw;
  r4.w = t3.SampleLevel(s1_s, r6.xy, 0).x;
  r4.w = r4.w * cb0[8].x + cb0[8].y;
  r6.xy = r2.xy * cb0[9].xy + cb0[9].zw;
  r6.x = t4.SampleLevel(s1_s, r6.xy, 0).x;
  r6.x = r6.x * cb0[10].x + cb0[10].y;
  r3.w = r4.w * r6.x + r3.w;
  r3.w = saturate(r3.w * cb0[11].x + cb0[11].y);
  r2.w = r3.w * cb0[12].x + r2.w;
  r3.w = saturate(r5.x * cb0[13].x + cb0[13].y);
  r6.z = r3.w * r2.w;
  r6.xy = float2(0,0);
  r6.xyz = r2.zzz * r3.xyz + r6.xyz;
  r0.xyw = r6.xyz + r0.xyw;
  r7.xyzw = cb12[1].xyzw * r6.yyyy;
  r7.xyzw = cb12[0].xyzw * r6.xxxx + r7.xyzw;
  r6.xyzw = cb12[2].xyzw * r6.zzzz + r7.xyzw;
  o6.xyzw = r6.xyzw + r1.xyzw;
  r1.xyz = cb12[10].xyz + -cb12[7].xyz;
  o4.xyz = r1.xyz + r0.xyw;
  o0.xyz = r3.xyz;
  o1.w = r0.z;
  o1.xyz = r4.xyz;
  o3.xy = r2.xy;
  o5.xyzw = r5.xyzw;
  return;
}