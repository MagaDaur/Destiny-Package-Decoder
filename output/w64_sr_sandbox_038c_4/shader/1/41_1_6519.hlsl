// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:59 2023
Buffer<float4> t2 : register(t2);

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[127];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  uint v6 : SV_VERTEXID0,
  uint v7 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD30,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v6.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  r0.x = (int)v6.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v6.x;
  r0.w = (int)r0.y * 6;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.x = (uint)r0.w;
  r1.x = t2.Load(r1.x).w;
  r2.xyzw = float4(1,4,2,5) + r0.wwww;
  r2.xyzw = (uint4)r2.xyzw;
  r3.xyzw = t2.Load(r2.x).xyzw;
  r4.xyzw = t2.Load(r2.y).xyzw;
  r2.xyz = t2.Load(r2.z).xyz;
  r5.xyz = t2.Load(r2.w).xyz;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r6.xyz = cb1[1].xyz * r3.yyy;
  r6.xyz = cb1[0].xyz * r3.xxx + r6.xyz;
  r6.xyz = cb1[2].xyz * r3.zzz + r6.xyz;
  r6.xyz = cb1[3].xyz + r6.xyz;
  r0.w = cmp(1 < cb0[123].x);
  if (r0.w != 0) {
    r0.w = cmp((int)r0.y < 0);
    if (r0.w != 0) {
      r0.w = cb0[36].x + 1;
      r0.w = (uint)r0.w;
      r7.xyz = t2.Load(r0.w).xyz;
    } else {
      r0.w = cb0[123].x + -1;
      r0.x = r0.x + -r0.w;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r8.xyz = t2.Load(r0.x).xyz;
        r7.xyz = r3.xyz * float3(2,2,2) + -r8.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r7.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r7.xyz = float3(0,0,0);
  }
  r0.xyw = cb1[1].zxy * r7.yyy;
  r0.xyw = cb1[0].zxy * r7.xxx + r0.xyw;
  r0.xyw = cb1[2].zxy * r7.zzz + r0.xyw;
  r0.xyw = cb1[3].zxy + r0.xyw;
  r0.xyw = r0.xyw + -r6.zxy;
  r1.z = dot(r0.xyw, r0.xyw);
  r1.z = sqrt(r1.z);
  r1.z = cmp(9.99999975e-006 < r1.z);
  r0.xyw = r1.zzz ? r0.xyw : float3(0,1,0);
  r1.z = dot(r0.xyw, r0.xyw);
  r1.z = rsqrt(r1.z);
  r3.xyz = r1.zzz * r0.ywx;
  r7.xyz = cb12[7].xyz + -r6.xyz;
  r8.xyz = r7.yzx * r0.xyw;
  r0.xyw = r0.wxy * r7.zxy + -r8.xyz;
  r1.z = dot(r0.xyw, r0.xyw);
  r1.z = rsqrt(r1.z);
  r0.xyw = r1.zzz * r0.xyw;
  r8.xyz = float3(0.00100000005,0.00100000005,0.00100000005) * r0.xyw;
  r1.z = (int)r0.z;
  r1.z = cmp(r1.z < 0.5);
  r0.xyw = float3(-0.00100000005,-0.00100000005,-0.00100000005) * r0.xyw;
  r0.xyw = r1.zzz ? r0.xyw : r8.xyz;
  r0.xyw = r6.xyz + r0.xyw;
  r1.z = dot(r3.xyz, r7.xyz);
  r6.xyz = -r1.zzz * r3.xyz + r7.xyz;
  r1.z = dot(r6.xyz, r6.xyz);
  r1.z = rsqrt(r1.z);
  o1.xyz = r6.xyz * r1.zzz;
  r1.y = x0[r0.z+0].y;
  r6.xyz = -cb12[7].xyz + r0.xyw;
  r0.z = dot(r6.xyz, r6.xyz);
  r0.z = rsqrt(r0.z);
  r6.xyz = r6.xyz * r0.zzz;
  r0.z = dot(r6.xyz, cb0[16].xyz);
  r0.z = max(cb0[101].x, r0.z);
  r0.z = min(cb0[102].x, r0.z);
  r0.z = r0.z * r5.x;
  r7.xyzw = cb0[106].xxxx + float4(0.125,0.375,0.25,0.5);
  r8.xyzw = round(r7.xyzw);
  r7.xyzw = -r8.xyzw + r7.xyzw;
  r8.xyzw = abs(r7.xyzw) * float4(-16,-16,-16,-16) + float4(8,8,8,8);
  r7.xyzw = r8.xyzw * r7.xyzw;
  r8.xyzw = abs(r7.xyzw) * float4(0.224999994,0.224999994,0.224999994,0.224999994) + float4(0.774999976,0.774999976,0.774999976,0.774999976);
  r7.xyzw = r8.xyzw * r7.xyzw;
  r1.zw = float2(1.5,1.5) * r7.yw;
  r7.xy = r7.xz * float2(1.5,1.5) + float2(1.5,1.5);
  r8.xyz = cb0[16].xyz * r1.zzz;
  r7.xzw = cb0[105].xyz * r7.xxx + r8.xyz;
  r7.xzw = cb0[14].xyz + r7.xzw;
  r7.xzw = r7.xzw + -r0.xyw;
  r7.xzw = r7.xzw * r4.zzz;
  r8.xyz = cb0[16].xyz * r1.www;
  r8.xyz = cb0[105].xyz * r7.yyy + r8.xyz;
  r8.xyz = cb0[14].xyz + r8.xyz;
  r8.xyz = r8.xyz + -r0.xyw;
  r8.xyz = r8.xyz * r4.zzz + -r7.xzw;
  r7.xyz = r4.www * r8.xyz + r7.xzw;
  r7.xyz = cb0[11].xyz * r4.xxx + r7.xyz;
  r7.xyz = r7.xyz + r2.xyz;
  r1.z = r1.y * 0.0299999993 + -0.0149999997;
  r7.xyz = cb12[4].xyz * r1.zzz + r7.xyz;
  r6.xyz = r6.xyz * r0.zzz + r7.xyz;
  r0.xyz = r6.xyz + r0.xyw;
  r6.xyzw = cb12[1].xyzw * r0.yyyy;
  r6.xyzw = cb12[0].xyzw * r0.xxxx + r6.xyzw;
  r6.xyzw = cb12[2].xyzw * r0.zzzz + r6.xyzw;
  r6.xyzw = cb12[3].xyzw + r6.xyzw;
  r0.w = cb0[126].x * cb0[12].w;
  r1.z = cmp(0.999000013 < r3.w);
  o0.z = r1.z ? 0 : r0.w;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  o0.w = r6.w;
  o0.xy = r1.xy;
  o3.xyz = r2.xyz;
  o3.w = r1.x;
  o4.xyzw = r4.xyzw;
  o5.xzw = r5.xyz;
  o5.y = 0;
  o7.xyzw = r6.xyzw;
  o6.xyz = r3.xyz;
  return;
}